cask "kolmafia" do
  version "26589"
  sha256 "c69fdc9387a122f69a3473bbbb829b65b62f11bd1b5ee48cea1f6f265d64c4ff"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26589/KoLmafia-22.07.26589.dmg",
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
