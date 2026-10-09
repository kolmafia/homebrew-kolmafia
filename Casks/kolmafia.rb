cask "kolmafia" do
  version "29357"
  sha256 "22ca066cb98de6402393ab0c1086d3dc7e8d6d24a02a086ce12f5d6219d0d8bc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29357/KoLmafia-26.10.29357.dmg",
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
