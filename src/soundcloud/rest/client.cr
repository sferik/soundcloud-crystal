require "./users"
require "http/client"
require "json"
require "oauth"
require "uri"

module SoundCloud
  module REST
    class Client
      include SoundCloud::REST::Users
      Host = "api.soundcloud.com"
      property :client_id

      def initialize(@client_id : String)
        @user_agent ||= "CrystalSoundCloudClient/#{SoundCloud::Version.to_s}"
        @http_client = HTTP::Client.new(Host, ssl: true)
      end

      def get(path : String)
        path += "?client_id=#{client_id}"
        response = @http_client.get(path)
        handle_response(response)
      end

      private def handle_response(response : HTTP::Response)
        case response.status_code
        when 200..299
          response.body
        when 400..499
          message = SoundCloud::Errors.from_json(response.body).errors.first.error_message
          raise SoundCloud::Errors::ClientError.new(message)
        when 500
          raise SoundCloud::Errors::ServerError.new("Internal Server Error")
        when 502
          raise SoundCloud::Errors::ServerError.new("Bad Gateway")
        when 503
          raise SoundCloud::Errors::ServerError.new("Service Unavailable")
        when 504
          raise SoundCloud::Errors::ServerError.new("Gateway Timeout")
        else
          ""
        end
      end

      private def to_query_string(hash : Hash)
        CGI.build_form do |form_builder|
          hash.each do |key, value|
            form_builder.add(key, value)
          end
        end
      end
    end
  end
end
