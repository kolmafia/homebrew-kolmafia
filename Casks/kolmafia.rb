cask "kolmafia" do
  version "29377"
  sha256 "1893372e80e3eb83692c2b15bbc6e752d1e4ee7ff5e07d5ba3d5b0c84f9480c1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29377/KoLmafia-26.10.29377.dmg",
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
