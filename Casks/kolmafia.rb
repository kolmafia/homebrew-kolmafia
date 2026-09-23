cask "kolmafia" do
  version "29291"
  sha256 "61a8ae26cf6d6e4991226fe906ad44830578bba4d732007d9473656b66db7be0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29291/KoLmafia-26.09.29291.dmg",
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
