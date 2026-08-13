cask "kolmafia" do
  version "29159"
  sha256 "d6d3d3ff2053135ccdccff2e13f9ba16930ce9bc938cc1555edb0ecb8576f8ae"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29159/KoLmafia-26.08.29159.dmg",
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
