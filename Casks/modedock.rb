cask "modedock" do
  version "0.1.1"
  sha256 "2a8c67fca5405e5536b7f149e231f76476ee5259d5c4475c9a05387417bcbeeb"

  url "https://github.com/ilijamt/modedock/releases/download/v#{version}/ModeDock-#{version}.dmg"
  name "ModeDock"
  desc "Menu-bar controls for screens, brightness, profiles, Keep Awake and screenshots"
  homepage "https://modedock.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ModeDock.app"

  zap trash: [
    "~/Library/Caches/com.matoski.modedock",
    "~/Library/HTTPStorages/com.matoski.modedock",
    "~/Library/Logs/ModeDock",
    "~/Library/Preferences/com.matoski.modedock.plist",
  ]
end
