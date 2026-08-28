cask "kolmafia" do
  version "29200"
  sha256 "0e95adc4d8e095a4cd452fd0a8dd997c5598726ee781d911de303ffd2d8cba84"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29200/KoLmafia-26.08.29200.dmg",
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
