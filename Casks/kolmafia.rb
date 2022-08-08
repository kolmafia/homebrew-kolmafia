cask "kolmafia" do
  version "26631"
  sha256 "7b560f3faab89fdc8ddcb65b6b1404e7a6456eb66c99836d2e1450e3dd2db4d9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26631/KoLmafia-22.08.26631.dmg",
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
