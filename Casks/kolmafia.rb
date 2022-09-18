cask "kolmafia" do
  version "26763"
  sha256 "cf2eae910954782607a711f80c7a8f438a0534e5e589c19d714656a79f8bc77d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26763/KoLmafia-22.09.26763.dmg",
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
