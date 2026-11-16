cask "modedock" do
  version "0.1.0"
  sha256 "e13c5e370b66f12dce5b1937ee1ae19b38be7f47e92058ac05ac72dfedd6f020"

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
