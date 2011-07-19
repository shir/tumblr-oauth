tumblr-oauth
============

Tumblr ruby gem with OAuth support.

Install
------

```
gem 'tumblr-oauth'
```

Usage
-----

```ruby
TumblrOAuth.configure do |config|
  config.consumer_key       = 'consumer_key'
  config.consumer_secret    = 'consumer_secret'
end

tumblr_client = TumblrOAuth::Client(
  :oauth_token        => 'oauth_token'
  :oauth_token_secret => 'oauth_secret'
  :blog_host          => 'blog_host_name' # For example "test.tumblr.com"
end
```

Copyright
=========

Copyright (c) 2011 Ildar Shaynurov. See LICENSE.txt for
further details.

