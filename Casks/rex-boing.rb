cask "rex-boing" do
  version "1.4.0"
  sha256 "26d464f175ffa3606dfc048ab07f3cf679c8d98ef519b69431133112e7d43013"

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
