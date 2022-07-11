cask "kolmafia" do
  version "26555"
  sha256 "24bc23e9b4ff9ad2bd316c25fe4c60e1fc47307dc5dee1c94fe7486324fd7137"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26555/KoLmafia-22.07.26555.dmg",
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
