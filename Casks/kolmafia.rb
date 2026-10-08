cask "kolmafia" do
  version "29352"
  sha256 "4acb5959775c3e865956d5eda0dc9461e0ed9e1e0333aa5c33ab621fbd3c17dc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29352/KoLmafia-26.10.29352.dmg",
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
