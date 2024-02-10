cask "cleanclip" do
  version "2.0.2"
  sha256 "2d6cdff70fa7428a676fe0a03b24369f002b747507c57587558c53cd5da0d60e"

  url "https://cleanclip.cc/releases/download/v#{version}/CleanClip.dmg"
  name "CleanClip"
  desc "macOS Clipboard Manager"
  homepage "https://cleanclip.cc"

  livecheck do
    url "https://cleanclip.cc/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "CleanClip.app"

  zap trash: [
    "~/Library/Application Support/CleanClip",
    "~/Library/Caches/com.antiless.cleanclip.mac",
    "~/Library/Preferences/com.antiless.cleanclip.mac.plist",
  ]
end
