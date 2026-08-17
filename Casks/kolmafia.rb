cask "kolmafia" do
  version "29166"
  sha256 "52f4182f02ec9de7cf56c442ba254e223d3c4700e0d2d05a52d12fd2b4720885"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29166/KoLmafia-26.08.29166.dmg",
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
