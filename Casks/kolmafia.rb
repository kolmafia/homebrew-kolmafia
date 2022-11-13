cask "kolmafia" do
  version "26939"
  sha256 "964f0bf1e9eeb2ff6571522ba9d062a0afb42451cc998b147858442e3afb0566"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26939/KoLmafia-22.11.26939.dmg",
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
