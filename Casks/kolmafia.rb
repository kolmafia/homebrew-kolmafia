cask "kolmafia" do
  version "26934"
  sha256 "84fca89fda06ba407376c9c9678767768fb2b17a87931eeea0e2a4018d1fb2fd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26934/KoLmafia-22.11.26934.dmg",
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
