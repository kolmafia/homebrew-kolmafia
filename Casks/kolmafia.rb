cask "kolmafia" do
  version "26808"
  sha256 "6bb19566c8e2c1a10ac63633db8aebaad1be77a633b42ef8bce6e86bf99149df"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26808/KoLmafia-22.10.26808.dmg",
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
