cask "pawshot" do
  version "1.4.0"
  sha256 "05d119714408173abea0de1dfed85e39f1e096e484ded6b1ac35ae8921fd3c97"

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
