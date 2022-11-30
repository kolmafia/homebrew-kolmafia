cask "kolmafia" do
  version "26986"
  sha256 "6b78ec38f9492f4452f6a6e032e5214b0ad69cb5b7a17997ce444be845c53603"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26986/KoLmafia-22.11.26986.dmg",
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
