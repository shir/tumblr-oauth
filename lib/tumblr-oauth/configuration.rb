module TumblrOAuth
  module Configuration
    VALID_OPTIONS_KEYS = [
      :consumer_key,
      :consumer_secret,
      :endpoint,
      :oauth_token,
      :oauth_token_secret,
      :blog_host
    ].freeze

    # By default, don't set an application key
    DEFAULT_CONSUMER_KEY = nil

    # By default, don't set an application secret
    DEFAULT_CONSUMER_SECRET = nil

    # The endpoint that will be used to connect if none is set
    #
    DEFAULT_ENDPOINT = 'http://api.tumblr.com/v2'.freeze

    # By default, don't set a user oauth token
    DEFAULT_OAUTH_TOKEN = nil

    # By default, don't set a user oauth secret
    DEFAULT_OAUTH_TOKEN_SECRET = nil

    # By default don't set blog_host
    DEFAULT_BLOG_HOST = nil

    # @private
    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      {}.tap{ |options| VALID_OPTIONS_KEYS.each{|k| options[k] = send(k) } }
    end

    # Reset all configuration options to defaults
    def reset
      self.consumer_key       = DEFAULT_CONSUMER_KEY
      self.consumer_secret    = DEFAULT_CONSUMER_SECRET
      self.endpoint           = DEFAULT_ENDPOINT
      self.oauth_token        = DEFAULT_OAUTH_TOKEN
      self.oauth_token_secret = DEFAULT_OAUTH_TOKEN_SECRET
      self.blog_host          = DEFAULT_BLOG_HOST
      self
    end
  end
end
