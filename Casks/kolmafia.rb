cask "kolmafia" do
  version "29418"
  sha256 "07f747dc9870d5f2828b0499fb34e780ec23ace0de4e5a4d033a733cfe9c72c1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29418/KoLmafia-26.11.29418.dmg",
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
