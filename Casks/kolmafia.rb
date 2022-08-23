cask "kolmafia" do
  version "26693"
  sha256 "809ad6d67f3817392cb375a4986c0dc3208957a8ae51d6b3a20f94276650f232"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26693/KoLmafia-22.08.26693.dmg",
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
