# typed: true
require 'ddtrace/transport/http/statistics'
require 'ddtrace/transport/http/env'

module Datadog
  module Transport
    module HTTP
      # Routes, encodes, and sends tracer data to the trace agent via HTTP.
      class Client
        include Transport::HTTP::Statistics

        attr_reader :api

        def initialize(api)
          @api = api
        end

        def send_request(request, &block)
          # Build request into env
          env = build_env(request)

          # Get responses from API
          response = yield(api, env)

          # Update statistics
          update_stats_from_response!(response)

          response
        rescue StandardError => e
          message =
            "Internal error during HTTP transport request. Cause: #{e.message} Location: #{Array(e.backtrace).first}"

          # Log error
          if stats.consecutive_errors > 0
            Datadog.logger.debug(message)
          else
            Datadog.logger.error(message)
          end

          # Update statistics
          update_stats_from_exception!(e)

          InternalErrorResponse.new(e)
        end

        def build_env(request)
          Env.new(request)
        end
      end
    end
  end
end
