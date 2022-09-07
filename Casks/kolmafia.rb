cask "kolmafia" do
  version "26729"
  sha256 "c2a2cc4071431b5b94cfc501d77a6d9f4038de28827d91c487035b39fec4e59e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26729/KoLmafia-22.09.26729.dmg",
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
