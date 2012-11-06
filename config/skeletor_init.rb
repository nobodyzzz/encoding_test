# Global Skeletor params
Skeletor::Deployer.setup(File.expand_path("../../", __FILE__), RACK_ENV)

module Skeletor
  module Middleware
    class PostBodyContentTypeParser
      alias_method :call_original, :call

      def can_convert?(charset)
        begin
          Encoding::find(charset)
          true
        rescue ArgumentError
          false
        end
      end

      def call(env)
        request = Rack::Request.new(env)
        unless request.content_charset == "utf-8"
          if can_convert? request.content_charset
            s = env[POST_BODY].read
            s.encode!("utf-8", request.content_charset)
            env[POST_BODY] = StringIO.new(CGI.escape(s).sub("%3D", "="))
          end
        end
        call_original(env)
      end
    end
  end
end
