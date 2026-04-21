cask "clipnest" do
  version "1.3.4"
  sha256 "22a1c227f8021edfeb87c6bee991743e84dccc48bf386ce35a40e93e194cbe15"

  url "https://github.com/nyanko3141592/ClipNest/releases/download/v#{version}/ClipNest.dmg"
  name "ClipNest"
  desc "Lightweight macOS menu bar clipboard manager with snippet support"
  homepage "https://github.com/nyanko3141592/ClipNest"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "ClipNest.app"

  zap trash: [
    "~/Library/Application Support/ClipNest",
    "~/Library/LaunchAgents/com.clipnest.app.plist",
    "~/Library/Preferences/com.clipnest.app.plist",
  ]
end
