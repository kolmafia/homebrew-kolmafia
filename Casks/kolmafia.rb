cask "kolmafia" do
  version "29191"
  sha256 "3dc7f0030f499dd0095f59c117e06364b734e36ac83064399f6508fcbf069338"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29191/KoLmafia-26.08.29191.dmg",
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
