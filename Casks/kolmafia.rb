cask "kolmafia" do
  version "26935"
  sha256 "6022d5414119a02d0c326190962cb60728b21b3d58442dc960492fced21ed421"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26935/KoLmafia-22.11.26935.dmg",
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
