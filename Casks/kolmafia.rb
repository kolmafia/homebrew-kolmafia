cask "kolmafia" do
  version "26758"
  sha256 "45a2e9ed1c0b4432eba4283d6b33b39cfe35dd9b80267a3160b70284e4d989da"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26758/KoLmafia-22.09.26758.dmg",
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
