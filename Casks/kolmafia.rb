cask "kolmafia" do
  version "26752"
  sha256 "5b67c94acec1054146c3ccd6023dc9d2c5878e18a0f53f677c35aa08394a28e6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26752/KoLmafia-22.09.26752.dmg",
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
