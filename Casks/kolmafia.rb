cask "kolmafia" do
  version "29183"
  sha256 "6408431cf19a6aa3c4990e5e8205c5c66a2d304053ee0a91980be4df6e317f79"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29183/KoLmafia-26.08.29183.dmg",
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
