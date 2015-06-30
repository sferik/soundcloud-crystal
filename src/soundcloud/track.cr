require "json"

module SoundCloud
  class Track
    json_mapping({
      id: {type: Int32},
      created_at: {type: Time, converter: TimeFormat.new("%Y/%m/%e %T %z")},
      user_id: {type: Int32},
      duration: {type: Int32},
      permalink: {type: String},
      commentable: {type: Bool},
      state: {type: String},
      original_content_size: {type: Int32},
      last_modified: {type: Time, converter: TimeFormat.new("%Y/%m/%e %T %z")},
      sharing: {type: String},
      tag_list: {type: String},
      permalink: {type: String},
      streamable: {type: Bool},
      downloadable: {type: Bool},
      embeddable_by: {type: String},
      genre: {type: String, nilable: true},
      description: {type: String, nilable: true},
      original_format: {type: String},
      uri: {type: String},
      user: {type: SoundCloud::User},
      permalink_url: {type: String},
      artwork_url: {type: String, nilable: true},
      waveform_url: {type: String},
      stream_url: {type: String},
      download_url: {type: String, nilable: true},
      playback_count: {type: Int32},
      download_count: {type: Int32},
      favoritings_count: {type: Int32},
      comment_count: {type: Int32},
    })
    def_equals id
  end
end
