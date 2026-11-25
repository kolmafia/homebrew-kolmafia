cask "kolmafia" do
  version "29477"
  sha256 "c27520be35d7382ab4008f3180c756918217aa764f1418607435053ae0af0287"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29477/KoLmafia-26.11.29477.dmg",
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
