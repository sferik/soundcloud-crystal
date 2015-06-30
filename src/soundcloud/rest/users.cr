module SoundCloud
  module REST
    module Users
      def user(user_id : Int32)
        response = get("/users/#{user_id}")
        SoundCloud::User.from_json(response)
      end

      def user(screen_name : String)
        response = get("/users/#{screen_name}")
        SoundCloud::User.from_json(response)
      end
    end
  end
end
