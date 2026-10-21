cask "kolmafia" do
  version "29382"
  sha256 "6a668055ba47b7c525fe5bbae70c3d1eb60d379ccfd0a0aedc587e0723ac7441"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29382/KoLmafia-26.10.29382.dmg",
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
