cask "kolmafia" do
  version "26887"
  sha256 "27827a02667773c49a49110a7fd6e6af899b25b04506023ac71bc58b032d027c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26887/KoLmafia-22.10.26887.dmg",
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
