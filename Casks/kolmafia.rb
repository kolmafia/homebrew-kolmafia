cask "kolmafia" do
  version "29437"
  sha256 "76a932998398a83fc67adb2f93011b883fcd4a4069790f10f14c1020022fc994"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29437/KoLmafia-26.11.29437.dmg",
      verified: "github.com/kolmafia/kolmafia"
  name "KoLmafia"
  desc "Cross-platform application to interface with online RPG Kingdom of Loathing 🍸"
  homepage "https://kolmafia.us/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KoLmafia.app"

  zap trash: "~/Library/Application Support/KoLmafia"

  caveats do
    depends_on_java "17+"
  end
end
