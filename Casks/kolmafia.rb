cask "kolmafia" do
  version "29206"
  sha256 "3500f61711766e63a6ada93454a50773604476bae9b3a874188cc7f0ef564a71"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29206/KoLmafia-26.08.29206.dmg",
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
