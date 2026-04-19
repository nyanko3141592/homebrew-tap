cask "shelfish" do
  version "1.3.1"
  sha256 "6c1045c0fcffc4ab0d3f291c4301fd68002003ea3f80835def1aab3f73bed27e"

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
