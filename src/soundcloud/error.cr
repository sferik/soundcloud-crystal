require "json"

module SoundCloud
  struct Error
    json_mapping({
      error_message: {type: String},
    })
  end
end
