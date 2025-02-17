# typed: true
module Datadog
  module Ext
    module Environment
      ENV_API_KEY = 'DD_API_KEY'.freeze
      ENV_ENVIRONMENT = 'DD_ENV'.freeze
      ENV_SERVICE = 'DD_SERVICE'.freeze
      ENV_SITE = 'DD_SITE'.freeze
      ENV_TAGS = 'DD_TAGS'.freeze
      ENV_VERSION = 'DD_VERSION'.freeze

      FALLBACK_SERVICE_NAME =
        begin
          File.basename($PROGRAM_NAME, '.*')
        rescue StandardError
          'ruby'
        end.freeze

      TAG_ENV = 'env'.freeze
      TAG_SERVICE = 'service'.freeze
      TAG_VERSION = 'version'.freeze
    end
  end
end
