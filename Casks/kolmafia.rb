cask "kolmafia" do
  version "26822"
  sha256 "32b7ff7bee870177dc3d40e502029b813a6b5d90909e7b540f0da7a41a097fc3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26822/KoLmafia-22.10.26822.dmg",
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
