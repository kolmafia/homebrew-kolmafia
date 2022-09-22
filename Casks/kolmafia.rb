cask "kolmafia" do
  version "26781"
  sha256 "f7d4c1fd58e28e8690a3e40142b6598b2a6fb2b1e3447defee36480abf7852d5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26781/KoLmafia-22.09.26781.dmg",
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
