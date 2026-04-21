cask "clipnest" do
  version "1.3.1"
  sha256 "e2b8f2120d475625caaa5739b2c9c528ab3d5c001d96d55497ba520726873200"

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
