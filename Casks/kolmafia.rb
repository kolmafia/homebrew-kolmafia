cask "kolmafia" do
  version "26853"
  sha256 "a5d24e50acb9ff7ae439a62858a1b940080b9c6d8db8203d6914da483021dbbd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26853/KoLmafia-22.10.26853.dmg",
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
