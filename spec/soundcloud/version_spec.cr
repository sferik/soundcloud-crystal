require "../helper"

describe SoundCloud::Version do
  describe "#to_s" do
    it "is in the form X.Y.Z" do
      SoundCloud::Version.to_s.split('.').count.should eq(3)
    end

    it "each segment of the the string is numeric" do
      SoundCloud::Version.to_s.split('.').each do |number|
        (/^\d+$/ =~ number).should eq(0)
      end
    end

    it "each segment of the string is in the right position" do
      x, y, z = SoundCloud::Version.to_s.split('.')
      x.to_i.should eq(SoundCloud::Version::Major)
      y.to_i.should eq(SoundCloud::Version::Minor)
      z.to_i.should eq(SoundCloud::Version::Patch)
    end
  end
end
