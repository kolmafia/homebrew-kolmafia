cask "kolmafia" do
  version "26749"
  sha256 "c84b5f11e5a9b254f9a99369d3dbf06aa4d8e65045175a67482e36960d7abbb2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26749/KoLmafia-22.09.26749.dmg",
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
