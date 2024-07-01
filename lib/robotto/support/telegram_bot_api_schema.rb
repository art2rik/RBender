# frozen_string_literal: true

require 'json'
require 'typhoeus'
require 'net/http'

module Robotto
  module Support
    class TelegramBotApiSchema
      SCHEMA_FILE_PATH = 'config/schema/telegram_bot_api_schema.json'
      SCHEMA_URL = 'https://ark0f.github.io/tg-bot-api/custom.json'

      class << self
        attr_accessor :schema_version_ex

        #
        # Prepares schema for Robotto::Support::AutoPassParameters.
        #
        # @return [Hash] - formatted schema.
        #
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
        #
        # Schema:
        #  {
        #   :method_name =>
        #      {
        #        name => 'MethodName',
        #        description => 'description',
        #        arguments_list => [:argument_1, :argument_2, ...],
        #        arguments =>
        #          {
        #            argument_1 =>
        #            {
        #               name: 'argument_name',
        #               description: 'description',
        #               required: true/false,
        #               type: 'integer',
        #               default: 'default_value',
        #               min: 0,
        #               max: 1000
        #            },
        #            argument_2 => ...
        #          }
        #      }
        #  }
        #
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
        def formatted
          return @formatted_schema if @formatted_schema

          schema_obj = new
          schema = schema_obj.open!
          formatted_schema = {}
          schema['methods'].each do |method|
            formatted_schema[method['name'].underscore] = schema_obj.method_hash(method)
          end
          formatted_schema['_info'] = schema_obj.info_hash

          @formatted_schema = formatted_schema.with_indifferent_access.freeze
        end

        def schema_file_path
          @schema_file_path ||= File.expand_path(SCHEMA_FILE_PATH, Dir.getwd)
        end

        def method_list
          @method_list ||= formatted.keys
        end

        def print_schema_version
          info = formatted[:_info]

          schema_version = info[:version].values.join('.')

          output = 'Current schema\'s version: '
          output += schema_version.yellow.bold
          output += " @(#{Date.new(*info[:recent_changes].values).strftime('%B %d, %Y').italic})"

          if schema_version_ex && schema_version_ex != schema_version
            output += " was #{schema_version_ex}".italic
          end

          puts output
        end

        def raw_schema
          new.open!
        end

        def reset_schema!
          @formatted_schema = nil
        end
      end

      attr_reader :schema, :schema_raw, :schema_path

      def initialize(schema_path = self.class.schema_file_path)
        @schema_path = schema_path
      end

      #
      # Gets new TelegramBotApi schema info.
      #
      # # # # # # # # # # # # # # # # # # # #
      def download
        response = Typhoeus.get(SCHEMA_URL, timeout: 5)

        if response.success?
          @schema_raw = response.body
          JSON.parse(response.body).with_indifferent_access
        else
          fail Net::HTTPError
        end
      end

      #
      # Opens schema file or loads new schema from telegram.org.
      # @return - schema.
      #
      # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
      def open!
        @schema =
          if File.exist?(schema_path)
            JSON.load_file(File.open(schema_path))
          else
            update!
          end
      end

      #
      # Loads new schema and saves it to a file.
      # @return schema[Hash] - parsed schema
      #
      # # # # # # # # # # # # # # # # # # # # # #
      def update!
        old_schema = File.exist?(schema_path) ? self.class.formatted : nil
        schema = download

        Dir.mkdir('config/schema') unless Dir.exist?('config/schema')

        file = File.open(schema_path, 'w')
        file.write(schema_raw)
        file.close
        self.class.schema_version_ex =
          if old_schema
            old_schema[:_info][:version].values.join('.')
          else
            'missing or removed'
          end

        self.class.reset_schema!

        schema
      end

      def method_hash(method)
        {
          name: method['name'],
          description: method['description'],
          link: method['documentation_link'],
          arguments_list:
            method['arguments']&.map { |arg| arg['name'] } || [],
          arguments:
            method['arguments']&.map do |arg|
              [arg['name'], argument_info_hash(arg)]
            end.to_h.deep_symbolize_keys || {},
        }
      end

      def argument_info_hash(arg)
        {
          name: arg['name'],
          description: arg['description'],
          required: arg['required'],
          type: arg['type'],
          default: arg['default'],
          min: arg['min'],
          max: arg['max'],
          array: arg['array'],
          reference: arg['reference'],
          any_of: arg['any_of'],
          min_len: arg['min_len'],
          max_len: arg['max_len'],
          enum: arg['enumeration'],
        }
      end

      def info_hash
        {
          version: schema['version'],
          recent_changes: schema['recent_changes'],
        }
      end
    end
  end
end
