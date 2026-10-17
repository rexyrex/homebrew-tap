cask "rex-boing-remote" do
  version "0.2.0"
  sha256 "8fe66797906393893125eeaec3bc39f3c63b910a575ee1fd9d66736ccb8434b3"

  url "https://github.com/rexyrex/Rex-Boing-Remote/releases/download/v#{version}/Rex.Boing.Remote.zip"
  name "Rex Boing Remote"
  desc "Menu bar monitor for remote servers over SSH"
  homepage "https://github.com/rexyrex/Rex-Boing-Remote"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Rex Boing Remote.app"

  uninstall quit: "com.rexyrex.RexBoingRemote"

  zap trash: [
    "~/Library/Application Support/Rex Boing Remote",
    "~/Library/Preferences/com.rexyrex.RexBoingRemote.plist",
  ]
end
