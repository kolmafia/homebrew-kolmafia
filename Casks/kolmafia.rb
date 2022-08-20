cask "kolmafia" do
  version "26676"
  sha256 "c0552aa50b7cee7e10de69d363e51f7fed0e4657ce2d1090e7fe0ef1a3584164"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26676/KoLmafia-22.08.26676.dmg",
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
