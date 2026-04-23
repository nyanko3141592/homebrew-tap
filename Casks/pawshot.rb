cask "pawshot" do
  version "1.5.1"
  sha256 "806b7247cf7b8dfadb4e867fa2a5c46bcfd3137702cd127fc8bd186b9970f546"

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
