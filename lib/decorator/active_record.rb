module PrintBeauty
  module Decorator
    class ActiveRecord
      def self.valid?(object)
        return true if object.is_a?(::ActiveRecord::Base)
        false
      end

      def self.decorate(object)

      end
    end
  end
end
