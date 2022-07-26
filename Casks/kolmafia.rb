cask "kolmafia" do
  version "26603"
  sha256 "f842e1c653b3fb53d7b006f43de58b98d2883c9914380f64edc962d1db0cd60c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26603/KoLmafia-22.07.26603.dmg",
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
