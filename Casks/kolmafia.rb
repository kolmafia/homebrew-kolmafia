cask "kolmafia" do
  version "26765"
  sha256 "7020dfdfc5f1d57976c5d32e502de70f07ebab094abc03ef27c34403a62b1e18"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26765/KoLmafia-22.09.26765.dmg",
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
