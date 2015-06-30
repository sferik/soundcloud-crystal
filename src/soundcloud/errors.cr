require "json"

module SoundCloud
  struct Errors
    json_mapping({
      errors: {type: Array(SoundCloud::Error)},
    })
  end
end
