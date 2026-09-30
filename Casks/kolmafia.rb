cask "kolmafia" do
  version "29317"
  sha256 "ce5e81a9ba7acab4801dede02b42db74b56de49f08c38facd7cd7ce2d985658e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29317/KoLmafia-26.09.29317.dmg",
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
