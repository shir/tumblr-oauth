require 'spec_helper'

describe TumblrOAuth::Configuration do
  it 'should has setup default end point' do
    TumblrOAuth.endpoint.should == TumblrOAuth::Configuration::DEFAULT_ENDPOINT
  end

  it 'should set default end point to http://api.tumblr.com/v2' do
    TumblrOAuth.endpoint.should == 'http://api.tumblr.com/v2'
  end

  it 'should set consumer key to nil by default' do
    TumblrOAuth.consumer_key.should be_nil
  end

  it 'should set consumer secret to nil by default' do
    TumblrOAuth.consumer_secret.should be_nil
  end

  it 'should set oauth token to nil by default' do
    TumblrOAuth.oauth_token.should be_nil
  end

  it 'should set oauth token secret to nil by default' do
    TumblrOAuth.oauth_token_secret.should be_nil
  end

  it 'should set blog host to nil by default' do
    TumblrOAuth.blog_host.should be_nil
  end

  it 'should allow to set own values for consumer key and secret' do
    consumer_key    = 'consumer_key'
    consumer_secret = 'consumer_secret'

    TumblrOAuth.configure do |config|
      config.consumer_key    = consumer_key
      config.consumer_secret = consumer_secret
    end

    TumblrOAuth.consumer_key.should    == consumer_key
    TumblrOAuth.consumer_secret.should == consumer_secret
  end
end
