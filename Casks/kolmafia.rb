cask "kolmafia" do
  version "26956"
  sha256 "c9422b00bb572dc19001d8f060501b49440754eee9eb64c2208278fbc2085f5b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26956/KoLmafia-22.11.26956.dmg",
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
