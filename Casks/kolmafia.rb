cask "kolmafia" do
  version "26842"
  sha256 "e356d53e66a8792b10af25a6aa79ec409693fb19bdd824d3443b0010baef09ae"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26842/KoLmafia-22.10.26842.dmg",
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
