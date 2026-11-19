cask "rex-boing-remote" do
  version "0.4.0"
  sha256 "31f56ff85e9b0f96ef1bd0e53e1dc3e2353cea27289acb16f248cf23e805bb22"

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
