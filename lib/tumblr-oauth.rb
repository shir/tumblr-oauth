require 'tumblr-oauth/configuration'
require 'tumblr-oauth/client'
require 'tumblr-oauth/errors'

module TumblrOAuth
  extend Configuration

  # Alias for TumblrOAuth::Client.new
  #
  # @return [TumblrOAuth::Client]
  #
  def self.client(options={})
    TumblrOAuth::Client.new(options)
  end

  # Delegate to TumblrOAuth::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private = false)
    client.respond_to?(method, include_private) || super(method, include_private)
  end
end
