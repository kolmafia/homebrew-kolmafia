cask "kolmafia" do
  version "26936"
  sha256 "0c063bdf7a7496380174f766afa74f756e2c2032acf2b218d0ba6fe4473f092f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26936/KoLmafia-22.11.26936.dmg",
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
