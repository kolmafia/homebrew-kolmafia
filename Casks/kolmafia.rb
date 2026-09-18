cask "kolmafia" do
  version "29280"
  sha256 "8eb090347759a64519e811d609adb60bd9ee6e1bd341f1efd3282c438313840d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29280/KoLmafia-26.09.29280.dmg",
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
