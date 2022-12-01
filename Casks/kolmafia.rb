cask "kolmafia" do
  version "26987"
  sha256 "75352a3ac0ea5c9a7e9cc1e0f04029a50f7d97c4e4dcbeccdd1ffd4387215a13"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26987/KoLmafia-22.12.26987.dmg",
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
