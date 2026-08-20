cask "kolmafia" do
  version "29174"
  sha256 "494c9e040772450f6c102c15b50b1240afd5d5e10170a02620414015240feb7c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29174/KoLmafia-26.08.29174.dmg",
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
