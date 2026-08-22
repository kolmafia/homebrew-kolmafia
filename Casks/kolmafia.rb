cask "kolmafia" do
  version "29180"
  sha256 "ea290dddcb77af0b9dd31285b5467ee472c1ca9ff9fcaf849b18f1db5b8551ef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29180/KoLmafia-26.08.29180.dmg",
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
