cask "kolmafia" do
  version "26712"
  sha256 "551d2095e777ba7cc6ed55dd40cb1bc707dc733811e6be6ff31cefc27ac26f00"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26712/KoLmafia-22.08.26712.dmg",
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
