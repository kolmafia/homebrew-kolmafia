cask "kolmafia" do
  version "26974"
  sha256 "aae59bd1ddbeb129815c992257b6344f55780ac825ae1e2e9669ffca2223a130"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26974/KoLmafia-22.11.26974.dmg",
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
