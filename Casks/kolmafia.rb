cask "kolmafia" do
  version "29332"
  sha256 "b876a722a08c407b394fae53cd4d52cd7c86aa798149fbf1929956933bae7b6d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29332/KoLmafia-26.10.29332.dmg",
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
