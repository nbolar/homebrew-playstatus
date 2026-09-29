cask "playstatus" do
  version "3.1.3,40"
  sha256 "f5449a3fa6370f6586ea66506c93bcd9cec450a2a368f82463f084189c2c79d2"

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
