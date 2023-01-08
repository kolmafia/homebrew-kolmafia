cask "kolmafia" do
  version "null"
  sha256 "afd237119c568e881a3c62e4a6b1eb2ef9f80a00e08a383b09aaf3ad35c8d1c4"

  url "",
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
