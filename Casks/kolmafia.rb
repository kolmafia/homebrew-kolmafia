cask "kolmafia" do
  version "29300"
  sha256 "30ba26f70bd8b9e7de1538bd2582331361c5dc9f9f2d5a46aec6fc5cd3168034"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29300/KoLmafia-26.09.29300.dmg",
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
