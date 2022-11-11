cask "kolmafia" do
  version "26926"
  sha256 "f9e617d53d0ad38ed72fb258007a27ced098251c20c502f502e0e555b3988545"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26926/KoLmafia-22.11.26926.dmg",
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
