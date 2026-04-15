cask "pawshot" do
  version "1.5.0"
  sha256 "d2019f1c870bf7830010d309d0b854d329fd4aab232cfd1863d758330bcbdcfb"

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
