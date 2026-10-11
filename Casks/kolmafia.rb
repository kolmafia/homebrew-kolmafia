cask "kolmafia" do
  version "29362"
  sha256 "16f4e30ca2028098e143c629f3fca3d4210c40a607cfa4446fcf200466564dea"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29362/KoLmafia-26.10.29362.dmg",
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
