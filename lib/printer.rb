require_relative 'decorator/active_record'
require_relative 'decorator/array'
require_relative 'decorator/hash'

module PrintBeauty
  class Printer

    def initialize(decorators: [])
      @decorators = [
        Decorator::ActiveRecord,
        Decorator::Array,
        Decorator::Hash
      ]
      @decorators += decorators
    end

    def print(object)
      decorator = load_decorator(object)
      decorator.decorate(object)
    end

    private

    def load_decorator(object)
      @decorators.each do |decorator|
        return decorator if decorator.valid? object
      end
    end
  end
end
