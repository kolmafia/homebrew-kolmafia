cask "kolmafia" do
  version "26874"
  sha256 "bb1497ebe3437ebfd5c23a2da100e4d4037ff3ec7125c07ec3622094c5808ecc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26874/KoLmafia-22.10.26874.dmg",
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
