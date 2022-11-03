cask "kolmafia" do
  version "26891"
  sha256 "5865733d159f8b616de5b19ad5cdc1e38173c861f1597fdbb8a920164812a92e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26891/KoLmafia-22.11.26891.dmg",
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
