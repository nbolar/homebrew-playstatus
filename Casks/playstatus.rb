cask "playstatus" do
  version "3.0.6,31"
  sha256 "7c06fa4c274af31d49ce3d4705106dde9862b8289051c79de484d773bc4cb767"

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
