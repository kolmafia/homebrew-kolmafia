cask "kolmafia" do
  version "26777"
  sha256 "be064759e47dfdfb30e3ad1371ec58d50a195dd573a38bad0d8c94612083ca9a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26777/KoLmafia-22.09.26777.dmg",
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
