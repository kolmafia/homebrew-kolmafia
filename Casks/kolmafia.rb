cask "kolmafia" do
  version "26888"
  sha256 "04d1d15058dd9342cd0e615e11b60a3e5bdd21fcd7d22e0ca83c9b51d9ca1f0e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26888/KoLmafia-22.10.26888.dmg",
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
