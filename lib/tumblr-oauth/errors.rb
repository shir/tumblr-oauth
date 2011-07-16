module TumblrOAuth
  class NoConsumerKeyError < StandardError; end
  class NoOAuthDataError   < StandardError; end
  class NotAuthorizedError < StandardError; end
end
