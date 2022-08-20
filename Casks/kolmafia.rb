cask "kolmafia" do
  version "26671"
  sha256 "659b9bdc6a5cdadc2fc5e82ae1e09b8a2b88d557104165d1e8eab27b2000c059"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26671/KoLmafia-22.08.26671.dmg",
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
