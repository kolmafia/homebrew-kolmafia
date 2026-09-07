cask "kolmafia" do
  version "29238"
  sha256 "2c2535070b401d308729989ea772b0027abcb05243010d0a83eab910c16fbca5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29238/KoLmafia-26.09.29238.dmg",
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
