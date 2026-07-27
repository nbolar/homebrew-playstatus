cask "playstatus" do
  version "3.0.6"
  sha256 "27d7cf3d82ec365d7e8873db9acee897f4b92f59a220f9dac77b1bd1a980d134"

  url "https://github.com/nbolar/PlayStatus/releases/download/v#{version}/PlayStatus-#{version}.zip"
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
