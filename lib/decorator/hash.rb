require 'colorize'

module PrintBeauty
  module Decorator
    class Hash
      def self.valid?(object)
        return true if object.is_a? ::Hash
        false
      end

      def self.decorate(object, level: 0)
        brace_start = "{ \n".red
        decorated = brace_start
        brace_end = "#{tab(level)} } \n".red
        object.each do |key, value|
          decorated += print_key(key, tab(level))
          if value.is_a? ::Hash
            level += 1
            decorated += decorate(value, level: level)
            next
          end

          decorated += print_value(value)
        end
        decorated += brace_end
        decorated
      end

      def self.print_key(key, tabs)
        "#{tabs}:#{key}".red + " => ".blue
      end

      def self.print_value(value)
        "#{value.to_s.green}\n"
      end

      def self.tab(quantity)
        "".rjust(quantity, "\t")
      end
    end
  end
end
