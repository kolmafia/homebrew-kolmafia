cask "kolmafia" do
  version "29221"
  sha256 "7a249d476a6d57ae9e17f123f8aa60387d0bd1f2cfee35bafa7eb975e78901db"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29221/KoLmafia-26.09.29221.dmg",
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
