require "json"

module SoundCloud
  class User
    json_mapping({
      id: {type: Int32},
      permalink: {type: String},
      username: {type: String},
      last_modified: {type: Time, converter: TimeFormat.new("%Y/%m/%e %T %z")},
      uri: {type: String},
      permalink_url: {type: String},
      avatar_url: {type: String},
      city: {type: String, nilable: true},
      country: {type: String, nilable: true},
      first_name: {type: String, nilable: true},
      last_name: {type: String, nilable: true},
      full_name: {type: String, nilable: true},
      description: {type: String, nilable: true},
      website: {type: String, nilable: true},
      website_title: {type: String, nilable: true},
      online: {type: Bool, nilable: true},
      plan: {type: String, nilable: true},
      track_count: {type: Int32, nilable: true},
      playlist_count: {type: Int32, nilable: true},
      public_favorites_count: {type: Int32, nilable: true},
      followers_count: {type: Int32, nilable: true},
      followings_count: {type: Int32, nilable: true},
    })
    def_equals id
  end
end
