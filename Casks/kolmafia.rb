cask "kolmafia" do
  version "26628"
  sha256 "e3dbc5d8978bd6cddb1f7d7be6b686994bd7162e47782c7047618a508c4f56ff"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26628/KoLmafia-22.08.26628.dmg",
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
