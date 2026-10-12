cask "rex-boing" do
  version "1.1.1"
  sha256 "cfde2f69ccdbb31c9c79a7f05093d019409dfc342ad488f07fdb910dace8baf3"

  url "https://github.com/rexyrex/Rex-Boing/releases/download/v#{version}/Rex.Boing.zip"
  name "Rex Boing"
  desc "Menu bar system monitor with an animated tyrannosaur"
  homepage "https://rexyrex.github.io/Rex-Boing/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Rex Boing.app"

  uninstall quit: "com.rexyrex.Zoomies"

  zap trash: "~/Library/Preferences/com.rexyrex.Zoomies.plist"
end
