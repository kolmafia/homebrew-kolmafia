cask "kolmafia" do
  version "26727"
  sha256 "e5b7eb25a3e447c312555347d75f00c744da7bd4a64a9a2cff809e76ffd9a739"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26727/KoLmafia-22.09.26727.dmg",
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
