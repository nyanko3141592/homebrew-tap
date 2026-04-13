cask "clipnest" do
  version "1.3.0"
  sha256 "2f979f6092ae2a34648028de0060421ed166c1f2af67da26c24ac4b69bae82e1"

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
