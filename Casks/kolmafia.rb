cask "kolmafia" do
  version "26658"
  sha256 "cd6e593763e9e446b00123971bed2536eb1752047c7e5f3509fc7a1b4b62145e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26658/KoLmafia-22.08.26658.dmg",
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
