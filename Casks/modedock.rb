cask "modedock" do
  version "0.2.0"
  sha256 "fa45a98c891fd2d916a04d3620c3fa1e7e6e6f728d34c07117e37749e87dbf06"

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
