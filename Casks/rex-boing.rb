cask "rex-boing" do
  version "1.2.0"
  sha256 "5ecf0d05ddf558cc95d76b688ff5179fb23f537df24e2560d9d7d08e6f5e9209"

  url "https://github.com/rexyrex/Rex-Boing/releases/download/v#{version}/Rex.Boing.zip"
  name "Rex Boing"
  desc "Menu bar system monitor with an animated tyrannosaur"
  homepage "https://rexyrex.github.io/Rex-Boing/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Rex Boing.app"

  uninstall quit: "com.rexyrex.Zoomies"

  zap trash: "~/Library/Preferences/com.rexyrex.Zoomies.plist"
end
