cask "kolmafia" do
  version "26675"
  sha256 "e38885716d38b1c1a2086422c05a2ffab461f88396f0612a9ae6e4f80a8740fb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26675/KoLmafia-22.08.26675.dmg",
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
