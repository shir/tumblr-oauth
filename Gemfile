source "http://rubygems.org"

gem 'faraday', '~> 0.6.0'
gem 'faraday_middleware', '~> 0.6.0'
gem 'multi_json', '~> 1.0.0'
gem 'hashie', '~> 1.0.0'
gem 'simple_oauth', '~> 0.1.5'

# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development, :test do
  gem "rspec", "~> 2.3.0"
  gem "bundler", "~> 1.0.0"
  gem "jeweler", "~> 1.6.4"

  gem 'guard'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
end
