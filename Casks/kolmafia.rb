cask "kolmafia" do
  version "29162"
  sha256 "815c8c143369fdceb70ce905257386650a0521ba1a899ce5cda7e6d7856dfe05"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29162/KoLmafia-26.08.29162.dmg",
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
