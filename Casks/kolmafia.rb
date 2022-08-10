cask "kolmafia" do
  version "26641"
  sha256 "3efdc1fd02137e1b22fda7ba9b2bcc2a63d8a7d122ebc8bc70658e8467d37cd9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26641/KoLmafia-22.08.26641.dmg",
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
