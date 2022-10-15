cask "kolmafia" do
  version "26844"
  sha256 "b5418a98cf83f8bad926108f37a96eed3203eeb9e3331d0103190b5ca0704906"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26844/KoLmafia-22.10.26844.dmg",
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
