cask "kolmafia" do
  version "29474"
  sha256 "e0cc4f83e0b277d85509b2b95021073cd5afc04c14b40df3038dcc8c7984d7bb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29474/KoLmafia-26.11.29474.dmg",
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
