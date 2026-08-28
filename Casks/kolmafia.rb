cask "kolmafia" do
  version "29197"
  sha256 "473300a6bd6c2c7cdc79dbf61920c440c4743bdb1aaa3d53c0e87df98e00bff8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29197/KoLmafia-26.08.29197.dmg",
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
