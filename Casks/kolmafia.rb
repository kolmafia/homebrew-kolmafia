cask "kolmafia" do
  version "26776"
  sha256 "a2713156cf5de551a6cae38be29d87654d4486dcb6b9b0e82ae77d68c647a983"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26776/KoLmafia-22.09.26776.dmg",
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
