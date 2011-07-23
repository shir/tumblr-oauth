$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'tumblr-oauth'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  TumblrOAuth.configure do |config|
    config.consumer_key       = ''
    config.consumer_secret    = ''
    config.oauth_token        = ''
    config.oauth_token_secret = ''
    config.blog_host          = ''
    config.debug              = false
  end
end
