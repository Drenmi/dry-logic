require 'dry/logic/rule'
require 'dry/logic/result'

module Dry
  module Logic
    class Rule::Predicate < Rule
      def type
        :predicate
      end

      def name
        predicate.name
      end

      def to_s
        "#{name}(#{args.map(&:inspect).join(', ')})"
      end
      alias_method :to_str, :to_s

      def ast(input = Undefined)
        [type, [name, args_with_names(input)]]
      end
      alias_method :to_ast, :ast
    end
  end
end
