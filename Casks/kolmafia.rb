cask "kolmafia" do
  version "29462"
  sha256 "bb2f8f9cee502a416e822419a6bf92033f27db2d1fedb2448d137fc385f92431"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29462/KoLmafia-26.11.29462.dmg",
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
