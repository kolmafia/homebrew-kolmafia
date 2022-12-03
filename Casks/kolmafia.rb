cask "kolmafia" do
  version "26990"
  sha256 "854c442b44928af1f235d9412eeb682399d1647c5119f902095d1736eb8226e9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26990/KoLmafia-22.12.26990.dmg",
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
