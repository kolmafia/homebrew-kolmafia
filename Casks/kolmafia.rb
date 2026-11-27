cask "kolmafia" do
  version "29484"
  sha256 "c0909499e908bce0afb0a5f861212aeaab26d2c1dcf2d956c95271c03a021752"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29484/KoLmafia-26.11.29484.dmg",
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
