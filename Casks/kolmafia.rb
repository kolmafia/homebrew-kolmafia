cask "kolmafia" do
  version "29252"
  sha256 "f243c4c1ea78a9b14617fb58ac43cbf5ac033df22c154afcb9a0d4d9fdb9a003"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29252/KoLmafia-26.09.29252.dmg",
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
