cask "modedock" do
  version "0.2.1"
  sha256 "1d718135d89cf67d431f1fc201b2f68372ac42b828b846af4704e04159829b3f"

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
