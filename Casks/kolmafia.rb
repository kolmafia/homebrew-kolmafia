cask "kolmafia" do
  version "26632"
  sha256 "4f898afc10439122fbe952c2309fc2af658d6537e9fd7227700df4bcb47e56b9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26632/KoLmafia-22.08.26632.dmg",
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
