cask "kolmafia" do
  version "26570"
  sha256 "4ef07839a04a52ead791c6dc6dcc1de5f808169f59d30d8c8191b9d6e9744bac"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26570/KoLmafia-22.07.26570.dmg",
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
