cask "kolmafia" do
  version "29151"
  sha256 "f53845ee7618790e0b1b179488be1538aca855e6b552913e1cce5bd5712ac91b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29151/KoLmafia-26.08.29151.dmg",
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
