cask "kolmafia" do
  version "29320"
  sha256 "70c64ee4d0be4b4dddf794274b60cf3c2689d13521637d47854c160b5c30f842"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29320/KoLmafia-26.09.29320.dmg",
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
