cask "kolmafia" do
  version "29201"
  sha256 "76e2689cf9135f3568df60e5bdd6aa4093ca1b4dfc69ba50481524a5761c248c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29201/KoLmafia-26.08.29201.dmg",
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
