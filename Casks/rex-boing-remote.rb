cask "rex-boing-remote" do
  version "0.1.0"
  sha256 "4abb018c80b2a9e0023a88c54813df81fb05e95890edd7428a1bb75a8605328f"

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
