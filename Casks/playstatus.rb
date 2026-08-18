cask "playstatus" do
  version "3.1.0,34"
  sha256 "d05bb7e19f1fc75e0b90f281c885ac1162230b9c1833d9d72bcd4ca09b668297"

  url "https://github.com/nbolar/PlayStatus/releases/download/v#{version.before_comma}/PlayStatus-#{version.before_comma}-build#{version.after_comma}.zip"
  name "PlayStatus"
  desc "Menu bar music controls and now-playing information"
  homepage "https://github.com/nbolar/PlayStatus"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "PlayStatus.app"

  uninstall quit: "com.bolar.PlayStatus"

  zap trash: [
    "~/Library/Application Support/PlayStatus",
    "~/Library/Preferences/com.bolar.PlayStatus.plist",
  ]
end
