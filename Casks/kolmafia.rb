cask "kolmafia" do
  version "26607"
  sha256 "17dc9a3c0dcf690154f7ed6f85d656edaa1a6e3b6435ab4d19a1091c5d626f19"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26607/KoLmafia-22.07.26607.dmg",
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
