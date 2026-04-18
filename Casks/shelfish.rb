cask "shelfish" do
  version "1.3.0"
  sha256 "8124e3aaead271f669e3f27ebcad75c9c05a7c66c62a4f5257031dc73ce9d4cd"

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
