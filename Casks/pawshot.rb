cask "pawshot" do
  version "1.6.0"
  sha256 "2a835ae23dd95c0d41ce4c4d343c69020958f70f5814d8ded3c3b6d6fc39f1ad"

  url "https://github.com/nyanko3141592/Pawshot/releases/download/v#{version}/Pawshot-#{version}.dmg"
  name "Pawshot"
  desc "Lightweight screenshot tool for macOS"
  homepage "https://github.com/nyanko3141592/Pawshot"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pawshot.app"

  zap trash: [
    "~/Library/LaunchAgents/com.pawshot.app.plist",
    "~/Library/Preferences/com.pawshot.app.plist",
  ]
end
