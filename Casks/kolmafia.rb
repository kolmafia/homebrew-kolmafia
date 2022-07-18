cask "kolmafia" do
  version "26582"
  sha256 "2d83a340b39657b6f252ba8c55049cb276cc2f77c35a9822d33d8f239355ffd5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26582/KoLmafia-22.07.26582.dmg",
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
