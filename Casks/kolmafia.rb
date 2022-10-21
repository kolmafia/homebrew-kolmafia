cask "kolmafia" do
  version "26867"
  sha256 "b5529d5462ae266663ef0ebc6297a4b30a1d5fe92f5d5b9237791a261701bb17"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26867/KoLmafia-22.10.26867.dmg",
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
