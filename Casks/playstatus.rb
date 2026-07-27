cask "playstatus" do
  version "3.0.7,32"
  sha256 "c43bcf3609080ab543f69173fa8280a58974a107b9690344afd75786ac6efc73"

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
