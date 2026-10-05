cask "kolmafia" do
  version "29338"
  sha256 "1ad02cdc9a753f07f92a6037cd49246c3139791192f53633e32620d10d94b6ae"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29338/KoLmafia-26.10.29338.dmg",
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
