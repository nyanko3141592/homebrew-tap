cask "shelfish" do
  version "1.2.0"
  sha256 "b7ee23d760744d5c2980186bf5d1c5ff2e808aa5d5d63a71e911e33ed7b2760c"

  url "https://github.com/nyanko3141592/shelfish/releases/download/v#{version}/Shelfish-v#{version}-arm64.dmg"
  name "Shelfish"
  desc "Drag-and-drop shelf that appears at screen edges"
  homepage "https://github.com/nyanko3141592/shelfish"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Shelfish.app"

  zap trash: [
    "~/Library/LaunchAgents/com.shelfish.app.plist",
    "~/Library/Preferences/com.shelfish.app.plist",
  ]
end
