cask "kolmafia" do
  version "29481"
  sha256 "db0966692ff6c97f1468618a243dbfb19796babe66949addab73b54d813a1a44"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29481/KoLmafia-26.11.29481.dmg",
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
