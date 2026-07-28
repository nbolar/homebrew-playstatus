cask "playstatus" do
  version "3.0.8,33"
  sha256 "ae1502eb2e00b31d26bf006a939625ca18e2917bd5857e565ebcb5f80f321231"

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
