cask "kolmafia" do
  version "26550"
  sha256 "5bdafa585a13a1d3d4ff023a56343062a1ca5275217a637b1629d7555879eed1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26550/KoLmafia-22.07.26550.dmg",
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
