module PrintBeauty
  module Decorator
    class Hash
      def self.valid?(object)
        return true if object.is_a? ::Hash
        false
      end

      def self.decorate(object)

      end
    end
  end
end
