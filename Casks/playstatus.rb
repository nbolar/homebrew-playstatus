cask "playstatus" do
  version "3.0.5"
  sha256 "04b22cde685718e3244daadded7e2523dd2afaf6675ea0646b29d7d44232477c"

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
