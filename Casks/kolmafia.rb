cask "kolmafia" do
  version "26789"
  sha256 "0c98e61a161c10a7c742224c23a09262e3223c9fdf1e3b77b251d62425771532"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26789/KoLmafia-22.09.26789.dmg",
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
