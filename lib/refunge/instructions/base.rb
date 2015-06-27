module Refunge
  module Instructions
    class Base
      attr_reader :token

      def initialize(token)
        @token = token
      end

      def action
        raise NotImplementedError
      end

      def call(*args)
        action.call(*args)
      end

    end
  end
end
