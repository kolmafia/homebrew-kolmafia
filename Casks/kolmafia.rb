cask "kolmafia" do
  version "26721"
  sha256 "2e7c82a5c115c0f048211860d10cebb64fe2a796c9e2da157b29ac516fef87d9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26721/KoLmafia-22.09.26721.dmg",
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
