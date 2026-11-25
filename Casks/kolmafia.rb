cask "kolmafia" do
  version "29478"
  sha256 "c9681e9b1d1b9dc7ae2170f338d316bc87dddc4362a6f7522e94447e24e4c5fc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29478/KoLmafia-26.11.29478.dmg",
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
