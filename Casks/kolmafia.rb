cask "kolmafia" do
  version "26753"
  sha256 "1964b3ad780096f94292b6a4b4cbb22043d1fbd67c56be437b4fdaa97e15cd95"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26753/KoLmafia-22.09.26753.dmg",
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
