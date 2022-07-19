cask "kolmafia" do
  version "26583"
  sha256 "a4bfcede82164c3cecbc2bd3d589487cf129218b1f7ad1ed2091b763c190ed16"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26583/KoLmafia-22.07.26583.dmg",
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
