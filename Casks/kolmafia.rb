cask "kolmafia" do
  version "26722"
  sha256 "222be6f7fa329b32da27739dd9abe2c32a246c7010207591f0b8d051b1cab973"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26722/KoLmafia-22.09.26722.dmg",
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
