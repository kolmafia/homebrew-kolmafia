cask "kolmafia" do
  version "26736"
  sha256 "1342f4de679f4fd6923a9005f10c8f9b4311cdd2eeadf78becd6fe1bf0e797c8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26736/KoLmafia-22.09.26736.dmg",
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
