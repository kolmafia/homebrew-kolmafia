cask "kolmafia" do
  version "26567"
  sha256 "a4a8f3a1d47bee3bf162045889002ef64264fabb5ce20ac636020b69902c1b91"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26567/KoLmafia-22.07.26567.dmg",
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
