cask "kolmafia" do
  version "26703"
  sha256 "e2102043e2b59e2704de3468e971308d450b4ed8b56cba33895279a149c50751"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26703/KoLmafia-22.08.26703.dmg",
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
