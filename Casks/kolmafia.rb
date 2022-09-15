cask "kolmafia" do
  version "26750"
  sha256 "37a5891a1a69ab0dfbdb11eeca997059ec45d7c17ea0b69756da94ae8bdca945"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26750/KoLmafia-22.09.26750.dmg",
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
