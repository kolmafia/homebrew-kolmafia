cask "kolmafia" do
  version "26865"
  sha256 "c6d2d8ac62b7cfa0b08d820f2dfaa415fc4f5a6c8078673fe29bdd34d0ce0742"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26865/KoLmafia-22.10.26865.dmg",
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
