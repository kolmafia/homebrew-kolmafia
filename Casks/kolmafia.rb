cask "kolmafia" do
  version "29445"
  sha256 "1e1a45c25c57e1665167201efbd9fba028c5defa8281072f1db09e5981862e9c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29445/KoLmafia-26.11.29445.dmg",
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
