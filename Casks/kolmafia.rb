cask "kolmafia" do
  version "26759"
  sha256 "7ec8b9fee86bbdb61cd94f91341feb64342a2fccbea6fd6a2b429efb15802c38"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26759/KoLmafia-22.09.26759.dmg",
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
