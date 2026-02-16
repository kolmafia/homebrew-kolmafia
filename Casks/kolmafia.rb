cask "kolmafia" do
  version "null"
  sha256 "bd8e0d7d0c7a7ad9a8caad6e7b215ebf5f5d6f7d0c2b97894e9fdbdd9ec18e33"

  url "",
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
