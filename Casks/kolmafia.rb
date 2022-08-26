cask "kolmafia" do
  version "26696"
  sha256 "8d492f0a3112d5bd928c005697d22e17f328cf9cc0231f4154cad39ba8a435ab"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26696/KoLmafia-22.08.26696.dmg",
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
