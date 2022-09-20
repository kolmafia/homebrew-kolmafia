cask "kolmafia" do
  version "26769"
  sha256 "685014878db853bf93ce896ee72ad9e77d5f17e8982b6e0cf676e4898e2a778c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26769/KoLmafia-22.09.26769.dmg",
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
