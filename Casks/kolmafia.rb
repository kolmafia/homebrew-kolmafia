cask "kolmafia" do
  version "29337"
  sha256 "f8fedfc7085bfb7e22d4c0778b5a628a51da01176d454bf509aed8ee54e514f8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29337/KoLmafia-26.10.29337.dmg",
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
