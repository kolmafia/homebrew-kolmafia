cask "kolmafia" do
  version "26690"
  sha256 "051cbd62bb703cefe3b9842e5730365f167fb158aed2e18fc1a2651aa58a24fe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26690/KoLmafia-22.08.26690.dmg",
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
