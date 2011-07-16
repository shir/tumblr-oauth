require 'faraday_middleware'

module TumblrOAuth
  # @private
  module Connection
    private

    def connection
      options = {
        :headers => {'Accept' => "application/json"},
        :url => endpoint,
      }

      Faraday.new(options) do |builder|
        builder.use Faraday::Request::OAuth, authentication if authenticated?
        builder.use Faraday::Request::UrlEncoded
        builder.use Faraday::Response::Mashify
        builder.use Faraday::Response::ParseJson
        builder.use Faraday::Response::Logger
        builder.use Faraday::Adapter::NetHttp
        builder.adapter Faraday.default_adapter
      end
    end
  end
end
