# frozen_string_literal: true

module Robotto
  module Types
    class Base
      class << self
        def attribute(name, klass, **opts)
          raise "Attribute name should be provided" unless name
          raise "Attribute type should be provided" unless klass

          schema[name] = { type: klass, **opts }
          schema[:_required_values] << name if opts[:required]

          define_method name do # "object.attribute" method generation
            attributes[name]
          end
          define_method "#{name}=".to_sym do |value| # "object.attribute=" method generation
            if klass < Robotto::Types::Base && value.is_a?(Hash)
              attributes[name] = klass.new(value)
            elsif klass < Robotto::Types::Base && !value.is_a?(Robotto::Types::Base)
              raise "Wrong type: should be #{klass} or Hash"
            else
              attributes[name] = value
            end
          end
        end

        def schema
          return @schema if @schema

          @schema = {}.with_indifferent_access
          @schema[:_required_values] = []

          @schema
        end
      end

      attr_reader :attributes
      delegate :[], to: :attributes

      def initialize(attributes = {})
        @attributes =
          attributes
            .with_indifferent_access
            .slice(*self.class.schema.keys)
        check_constraints
        prepare!
      end

      def schema
        self.class.schema
      end

      def as_json
        @attributes.as_json
      end
      alias_method :to_h, :as_json

      # Sometimes types objects should be frozen.

      private

      def check_constraints
        check_required_values
        check_types
      end

      def check_required_values
        missing_values = []
        schema[:_required_values].each { |attr| missing_values << attr if attributes[attr].nil? }

        raise "This values are required for #{self.class}: #{":" + missing_values.join("\s,")}." if missing_values.any?
      end

      def check_types
        attributes.each do |attr, value|
          type = schema[attr][:type]

          next if value.nil? && !schema[attr][:required]

          if type.is_a?(Array) && type.none? { |t| value.is_a?(t) }
            raise "Value #{attr} should be #{type.join(' or ')}. Current type: #{value.class}"
          elsif type.is_a?(Array)
            next
          elsif (type < Robotto::Types::Base) && !(value.is_a?(Hash) || value.is_a?(Robotto::Types::Base))
            raise "Value should be #{type} or Hash. Current type: #{value.class}"
          elsif !(type < Robotto::Types::Base) && !value.is_a?(type)
            raise "Value #{attr} should be #{type}. Current type: #{value.class}"
          end
        end
      end

      def prepare!
        attributes.each do |attribute, value|
          if !schema[attribute][:type].is_a?(Array) &&
              schema[attribute][:type] < Robotto::Types::Base &&
              value.is_a?(Hash)
            attributes[attribute] = schema[attribute][:type].new(value)
          end
        end
      end
    end
  end
end
