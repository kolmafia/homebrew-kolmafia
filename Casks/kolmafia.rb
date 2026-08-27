cask "kolmafia" do
  version "29194"
  sha256 "1296a35b2dd20ea3d9518fc398946efae47e5ecbfb90e356508d7339ded4ed25"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29194/KoLmafia-26.08.29194.dmg",
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
