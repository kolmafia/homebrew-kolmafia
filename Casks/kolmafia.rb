cask "kolmafia" do
  version "26945"
  sha256 "d1021a0c4a581c44d5574d6a29c12383e6a243f8c2def6e844d6b759531f5d24"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26945/KoLmafia-22.11.26945.dmg",
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
