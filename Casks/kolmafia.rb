cask "kolmafia" do
  version "27003"
  sha256 "74ceb61c04664428298b6106aaee066b20b705682c5e139fd41bb66a8795447c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27003/KoLmafia-22.12.27003.dmg",
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
