cask "kolmafia" do
  version "29235"
  sha256 "07e124baa758cf9beaf9403faee11ee3894937b2e1075ac6206636227d7c2b9d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29235/KoLmafia-26.09.29235.dmg",
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
