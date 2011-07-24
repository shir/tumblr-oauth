require 'faraday'

# @private
module Faraday
  # @private
  class Response::RaiseHttp5xx < Response::Middleware
    def on_complete(env)
      case env[:status].to_i
      when 500
        raise TumblrOAuth::InternalServerError.new(error_message(env, "Something is technically wrong."), env[:response_headers])
      when 502
        raise TumblrOAuth::BadGateway.new(error_message(env, "Tumblr is down or being upgraded."), env[:response_headers])
      when 503
        raise TumblrOAuth::ServiceUnavailable.new(error_message(env, "(__-){ Tumblr is over capacity."), env[:response_headers])
      end
    end

    private

    def error_message(env, body=nil)
      "#{env[:method].to_s.upcase} #{env[:url].to_s}: #{[env[:status].to_s + ':', body].compact.join(' ')}."
    end
  end
end
