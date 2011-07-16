module TumblrOAuth
  class Client
    module Blog
      def info
        get(path_with_blog_host('info'))
      end

      def path_with_blog_host(path)
        ['blog', blog_host, path].join('/') + "?api_key=#{consumer_key}"
      end
    end
  end
end
