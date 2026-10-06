cask "kolmafia" do
  version "29344"
  sha256 "60b506fd371e321700756d3422728228936e10c59f48c059a070471ae00ab8f8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29344/KoLmafia-26.10.29344.dmg",
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
