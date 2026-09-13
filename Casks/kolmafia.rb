cask "kolmafia" do
  version "29258"
  sha256 "f7c21c0821ecfcb95b1f83353caae6bc8605380ec3d2087aa0eaaacbac583bd3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29258/KoLmafia-26.09.29258.dmg",
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
