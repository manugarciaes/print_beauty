module PrintBeauty
  module Decorator
    class Array
      def self.valid?(object)
        return true if object.is_a? ::Array
        false
      end

      def self.decorate(object)

      end
    end
  end
end
