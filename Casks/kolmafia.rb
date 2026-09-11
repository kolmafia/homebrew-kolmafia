cask "kolmafia" do
  version "29248"
  sha256 "06391da5d5277f76ef8dce17a3d21ba26a8009b488a0900cc980955d7eaafdb3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29248/KoLmafia-26.09.29248.dmg",
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
