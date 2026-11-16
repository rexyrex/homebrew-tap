cask "rex-boing" do
  version "1.3.0"
  sha256 "bff8c2c6cbdefc9bc26a14cc3dac0d2e6a4c4a8a1ed88254498237ee86c2a3ef"

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
