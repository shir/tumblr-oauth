module TumblrOAuth
  class Client
    module Blog
      def info
        blog_request(:get, 'info', :api_key)
      end

      def avatar
        blog_request(:get, 'avatar')
      end

      private

      def blog_request(method, path, auth_type = :none)
        auth_string =
          case auth_type.to_sym
          when :api_key
            "?api_key=#{consumer_key}"
          when :oauth
            # TODO: Require oauth authorization
            ''
          else
            ''
          end
        request(method, path_with_blog_host(path) + auth_string)
      end

      def path_with_blog_host(path)
        ['blog', blog_host, path].join('/')
      end
    end
  end
end
