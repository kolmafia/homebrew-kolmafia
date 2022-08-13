cask "kolmafia" do
  version "26655"
  sha256 "c290a9ca4c27f03f4d1e335b8ddfba77bc1ab653e23555878d34b969ef45d843"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26655/KoLmafia-22.08.26655.dmg",
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
