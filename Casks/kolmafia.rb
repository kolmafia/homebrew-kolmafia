cask "kolmafia" do
  version "29190"
  sha256 "e8ea5dadaa508d3b81d7bd373634e3c079affe5272978e14aa845c81da210680"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29190/KoLmafia-26.08.29190.dmg",
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
