require_relative "base"

module Administrate
  module Field
    class Attachment < Administrate::Field::Base
      def self.searchable?
        false
      end

      def preview?
        options.has_key?(:preview)
      end

      def preview
        data.preview(*options.fetch(:preview, {}))
      end

      def variant?
        options.has_key?(:variant)
      end

      def variant
        data.variant(*options.fetch(:variant, {}))
      end
    end
  end
end
