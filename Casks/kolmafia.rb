cask "kolmafia" do
  version "26924"
  sha256 "ec0e9882e63c2e49bebe5c0d081233e2b2d337395cd676eeda483baf0014a2cd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26924/KoLmafia-22.11.26924.dmg",
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
