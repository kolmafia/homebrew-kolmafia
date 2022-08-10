cask "kolmafia" do
  version "26647"
  sha256 "0158a60bbb4fca33e7ed385f2fc75ab3731e365ba771810bc2d8e900326851bf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26647/KoLmafia-22.08.26647.dmg",
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
