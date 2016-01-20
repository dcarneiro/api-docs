module Api
  module Docs
    class Dsl
      def response_messages
        @response_messages ||= []
      end

      def response(status, text = nil, model = nil)
        if status.is_a? Symbol
          status = :ok if status == :success
          status_code = Rack::Utils.status_code(status)
          response_messages << { code: status_code, responseModel: model, message: text || status.to_s.titleize }
        else
          response_messages << { code: status, responseModel: model, message: text }
        end
        response_messages.sort_by! { |i| i[:code] }
      end
    end
  end
end
