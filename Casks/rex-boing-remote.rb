cask "rex-boing-remote" do
  version "0.3.0"
  sha256 "a77c4f7a329a58faa44785ef512907ed6b09090b7060f1f0154810696384204c"

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
