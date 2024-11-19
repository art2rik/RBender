# frozen_string_literal: true

module Robotto
  module Utils
    class TypesScaffoldGenerator
      ATTR_IDENTS = "\s" * 6
      class << self
        def update_type_classes(schema_file_path = nil)
          new.update_type_classes(schema_file_path)
        end
      end

      def update_type_classes(schema_file_path)
        schema = Robotto::Support::TelegramBotApiSchema.new(schema_file_path).open!
        Dir.chdir('lib/robotto/types')

        schema['objects'].each do |object|
          file_name = "#{object['name'].underscore}.rb"
          make_class_file(file_name, object) unless File.exist?(file_name)
          update_attributes(file_name, object)
        end
      end

      private

      def detect_type(props)
        case props['type']
        when 'reference'
          props['reference']
        when 'bool'
          '[TrueClass, FalseClass]'
        when 'any_of'
          "[#{props['any_of'].map { |subtype| detect_type(subtype) }.join(",\s")}]"
        else
          props['type'].capitalize
        end
      end

      def make_class_file(file_name, object)
        file = File.open(file_name, 'w+')

        content = <<~RUBY
          # frozen_string_literal: true

          # @ THIS CLASS IS AUTO GENERATED @
          module Robotto
            module Types
              class #{object['name']} < Robotto::Types::Base
              end
            end
          end
        RUBY

        file.write(content)
        file.close
      end

      def make_attribute(props)
        line = ATTR_IDENTS
        line += " attribute :#{props['name']}, "
        line += detect_type(props)
        line += ', required: true' if props['required']

        line
      end

      def update_attributes(file_name, object)
        file = File.open(file_name, 'a+')
        lines = file.read.split("\n")
        file.truncate(0)
        idx =
          lines.find_index { |l| l.include?('attribute') } ||
          lines.find_index { |l| l.include?('class') } + 1
        lines.delete_if { |line| line.include?('attribute') }
        object['properties']&.each do |props|
          lines.insert(idx, make_attribute(props))
          idx += 1
        end
        file.write("#{lines.join("\n")}\n")
      end
    end
  end
end
