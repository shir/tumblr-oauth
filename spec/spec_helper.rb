$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'tumblr-oauth'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  TumblrOAuth.configure do |config|
    config.consumer_key       = 'TtFR0WJ0KyZkwbHJBPVtsKW1MggI8gc88Se75IT4p4M2ZDAh0h'
    config.consumer_secret    = 'nZeDUWbcyCxv8IqIMszX7dYhjswmwmgKEeQvrGfm5LPeNbiX4g'
    config.oauth_token        = 'fwiRGj7TATlolXmX9MHTBPml1YW4EhFoPKzaHgdbyN9SA0PJzc'
    config.oauth_token_secret = '57WJ1LIUGOt7IrPXtJjSR0UM6ygHmlxxSRIkni0LMGtcHELLTf'
    config.blog_host          = 'shir-test.tumblr.com'
    config.debug              = true
  end
end
