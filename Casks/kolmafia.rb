cask "kolmafia" do
  version "26667"
  sha256 "986f24788bc4c9d81b582727ba4df1b6ef77bbc4a10be1022425a3390e43b5da"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26667/KoLmafia-22.08.26667.dmg",
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
