module Refunge
  module Instructions
    class Base
      attr_reader :token

      def initialize(token)
        @token = token
      end

      def execute(stack, cursor, output, code)
        raise NotImplementedError
      end
    end
  end
end
