cask "kolmafia" do
  version "26793"
  sha256 "beab745644a5ef49fee90fc70028bd8a04afd87df1cec34cd4169d28f5b448f7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26793/KoLmafia-22.09.26793.dmg",
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
