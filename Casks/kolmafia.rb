cask "kolmafia" do
  version "29229"
  sha256 "3f381ab04310d41ba6bb6f1495874f30381986e27e587da402b2be78bcf79e1c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29229/KoLmafia-26.09.29229.dmg",
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
