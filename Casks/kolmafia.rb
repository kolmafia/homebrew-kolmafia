cask "kolmafia" do
  version "26585"
  sha256 "e01cdc75538fef2033f8d3d541a0792742c7d7fde9cfe4a60deedc9b5d59d328"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26585/KoLmafia-22.07.26585.dmg",
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
