require_relative "base"

module Administrate
  module Field
    class MultipleSelectField < Field::Base
      def to_s
        data
      end

      def self.permitted_attribute(attribute, _options = nil)
        { attribute.to_sym => [] }
      end

      def permitted_attribute
        self.class.permitted_attribute(attribute)
      end
    end
  end
end
