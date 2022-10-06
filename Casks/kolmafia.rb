cask "kolmafia" do
  version "26813"
  sha256 "83b0eea59cd4f7f6fdf217b4f335f5c845402fc7a77a35d002197a2c7cd47fe6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26813/KoLmafia-22.10.26813.dmg",
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
