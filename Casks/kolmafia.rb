cask "kolmafia" do
  version "26949"
  sha256 "8847d59675ea03c5350ae59a871e3e6882395eb549fb519bd907510e9612b246"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26949/KoLmafia-22.11.26949.dmg",
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
