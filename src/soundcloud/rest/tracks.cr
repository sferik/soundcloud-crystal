module SoundCloud
  module REST
    module Users
      def track(track_id: Int32)
        response = get("/tracks/#{track_id}")
        SoundCloud::Track.from_json(response)
      end
    end
  end
end
