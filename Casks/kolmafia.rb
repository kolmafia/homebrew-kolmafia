cask "kolmafia" do
  version "26996"
  sha256 "32cd363ffafaa8f9ec4f955073d1e0c9dd2621cf54b962f0a623ea9c74b59eee"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26996/KoLmafia-22.12.26996.dmg",
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
