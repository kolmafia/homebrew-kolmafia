cask "kolmafia" do
  version "26890"
  sha256 "bb407293a08df81c2f2e777eb9f00bee1e5780a6a048b442bdc4a878c9525b93"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26890/KoLmafia-22.11.26890.dmg",
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
