cask "kolmafia" do
  version "26764"
  sha256 "71f56bbd548ccf3fe83dda292492b6b66ac6276748317e68c960ffcc7a1fc53e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26764/KoLmafia-22.09.26764.dmg",
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
