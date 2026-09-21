cask "kolmafia" do
  version "29287"
  sha256 "76fa3c84b58e89fb75f6a437dcae0cc7ea883531b36d20638175cfa1002bafcd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29287/KoLmafia-26.09.29287.dmg",
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
