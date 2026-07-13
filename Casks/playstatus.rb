cask "playstatus" do
  version "3.0.4"
  sha256 "3bdd51c0b5203b306d0b63ab42e5c5fce92febe0553a3f7df16a71b290fda1aa"

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
