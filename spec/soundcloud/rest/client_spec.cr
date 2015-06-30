require "../../helper"

describe SoundCloud::REST::Client do
  describe "#initialize" do
    it "sets properties" do
      client = SoundCloud::REST::Client.new("YOUR_CLIENT_ID")
      client.client_id.should eq("YOUR_CLIENT_ID")
    end
  end

  describe "#get" do
    pending "executes an HTTP GET" do
      client = SoundCloud::REST::Client.new("YOUR_CLIENT_ID")
      path   = "/1.1/users/show.json"
      options = {"screen_name" => "sferik"}
      expect_raises(SoundCloud::Errors::ClientError, "Invalid or expired token") do
        client.get(path, options)
      end
    end
  end
end
