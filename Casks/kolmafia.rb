cask "kolmafia" do
  version "26785"
  sha256 "0a2697601f4a41bcbf382c286f9ee5cd0ca78e67181bc4c5948ea004852b0df0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26785/KoLmafia-22.09.26785.dmg",
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
