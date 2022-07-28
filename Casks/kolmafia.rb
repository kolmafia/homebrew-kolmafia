cask "kolmafia" do
  version "26610"
  sha256 "44d3e2205245a5fabdbf1601de23d4a77439908a4343b21b765cc2ea8fdc18d2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26610/KoLmafia-22.07.26610.dmg",
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
