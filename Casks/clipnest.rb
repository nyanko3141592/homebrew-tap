cask "clipnest" do
  version "1.3.2"
  sha256 "a2cd6829701cc98884647bcd8e605892e3147f09bebc7e4535bde104a2bc6b15"

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
