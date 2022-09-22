cask "kolmafia" do
  version "26779"
  sha256 "18612857e3f98d338e3e11eae9cbdaa63bae1b938122845a1c067387d3fbce8c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26779/KoLmafia-22.09.26779.dmg",
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
