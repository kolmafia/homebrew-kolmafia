cask "kolmafia" do
  version "26948"
  sha256 "abc118b69b669dc091a1aa17e3ea23e9dc1b582153bb56175e023f9488cd6dff"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26948/KoLmafia-22.11.26948.dmg",
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
