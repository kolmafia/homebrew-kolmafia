cask "kolmafia" do
  version "26876"
  sha256 "a2a681483decf68fbb680ae58dc63c949b8f2a7bab9175ababce2ce64f1792c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26876/KoLmafia-22.10.26876.dmg",
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
