cask "kolmafia" do
  version "26575"
  sha256 "44a2c27f7642d3827a077e63e037f39e7b1fc02303c834e714993a9c8fe2b885"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26575/KoLmafia-22.07.26575.dmg",
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
