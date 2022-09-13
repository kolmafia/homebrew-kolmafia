cask "kolmafia" do
  version "26745"
  sha256 "c00adb2ad6fb738ada1101fa609b5bb98749b567cb4970f0a62184d2f2d536a6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26745/KoLmafia-22.09.26745.dmg",
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
