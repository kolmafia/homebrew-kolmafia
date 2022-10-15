cask "kolmafia" do
  version "26850"
  sha256 "ccd82d4e892f06edf9e1a3d1d3f7b0cf9a603c0ea8c4555ac9836e08a33b0483"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26850/KoLmafia-22.10.26850.dmg",
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
