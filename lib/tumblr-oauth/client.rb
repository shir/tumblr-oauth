require 'tumblr-oauth/authentication'
require 'tumblr-oauth/connection'
require 'tumblr-oauth/request'

module TumblrOAuth
  class Client
    require 'tumblr-oauth/client/blog'

    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    # Creates a new API
    def initialize(options={})
      options = TumblrOAuth.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include Authentication
    include Connection
    include Request

    include TumblrOAuth::Client::Blog
  end
end
