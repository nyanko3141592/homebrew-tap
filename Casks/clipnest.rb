cask "clipnest" do
  version "1.3.3"
  sha256 "1aa006aa0eaf5bc542fadcd53ac7d1515414fdf5c55d2673ac322dc8a26f5c73"

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
