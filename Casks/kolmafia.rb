cask "kolmafia" do
  version "26905"
  sha256 "4e798bb1e8c9006fe120e68ebb9733bfb3a98f2358347f5fc8a43bd0cb15b176"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26905/KoLmafia-22.11.26905.dmg",
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
