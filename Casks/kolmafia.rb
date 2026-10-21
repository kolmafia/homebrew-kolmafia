cask "kolmafia" do
  version "29380"
  sha256 "1d559f529a9fb94124148f7fd3dd8d15fd9a2c1c3564347d27672b87f13d33e2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29380/KoLmafia-26.10.29380.dmg",
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
