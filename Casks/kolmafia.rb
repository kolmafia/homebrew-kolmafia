cask "kolmafia" do
  version "26882"
  sha256 "1da74e5cc431510e7d329ddbbc348dbf84092843a404e1ea2b35ca6422851fcf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26882/KoLmafia-22.10.26882.dmg",
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
