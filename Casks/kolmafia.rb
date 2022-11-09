cask "kolmafia" do
  version "26919"
  sha256 "14fd89e3af76aab72d91f1b465540f952d6f2ade593857216bf1304013c4b5f8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26919/KoLmafia-22.11.26919.dmg",
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
