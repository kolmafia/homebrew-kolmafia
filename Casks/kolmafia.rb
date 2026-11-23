cask "kolmafia" do
  version "29467"
  sha256 "fe154c8490e4e9bced2223ea5325361b820539a29926b79f00f85ea44f582939"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29467/KoLmafia-26.11.29467.dmg",
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
