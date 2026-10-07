cask "kolmafia" do
  version "29347"
  sha256 "7c453539acc557333d89d2bb32db5655b1f632b70417e3a841db318b793b39e0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29347/KoLmafia-26.10.29347.dmg",
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
