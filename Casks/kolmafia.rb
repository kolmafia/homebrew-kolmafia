cask "kolmafia" do
  version "29251"
  sha256 "a52f83e4563e71e99ff77d796a3eec7b1946e17bcce5fb96e97a3fe8c8153fbd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29251/KoLmafia-26.09.29251.dmg",
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
