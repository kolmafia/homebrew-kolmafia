cask "kolmafia" do
  version "26923"
  sha256 "1f90c3bc96128b05a9baadd8f840bc6e1acf0dbeaf78c71b3a4a86e50e8d771e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26923/KoLmafia-22.11.26923.dmg",
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
