cask "kolmafia" do
  version "26895"
  sha256 "aae1020674da3c6309f637a2f8e3ad090df76a48ec409cedfe19bdb731107361"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26895/KoLmafia-22.11.26895.dmg",
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
