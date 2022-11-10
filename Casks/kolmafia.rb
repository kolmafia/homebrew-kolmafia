cask "kolmafia" do
  version "26921"
  sha256 "8a738f8bd0564a16c0624235ca33a874f54245ce4e8060b66540db7ea7be1eb0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26921/KoLmafia-22.11.26921.dmg",
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
