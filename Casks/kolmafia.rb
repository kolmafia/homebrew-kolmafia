cask "kolmafia" do
  version "26600"
  sha256 "18f268f38be3366a6fea4fa65e8db734eed2cd169dbfef4aff3829b4a4b4293a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26600/KoLmafia-22.07.26600.dmg",
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
