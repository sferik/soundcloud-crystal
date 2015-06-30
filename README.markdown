A library to access the SoundCloud API using [Crystal][]
-----------------------------------------------------

[crystal]: http://crystal-lang.org/

[![Build Status](https://travis-ci.org/sferik/soundcloud-crystal.svg?branch=master)][travis]

[travis]: https://travis-ci.org/sferik/soundcloud-crystal

#### Example

Register a new SoundCloud application at <http://soundcloud.com/you/apps/new>

```crystal
require "./src/soundcloud"

client = SoundCloud::REST::Client.new("YOUR_CLIENT_ID")

pp client.user("erik")
pp client.track(206048516)
```
