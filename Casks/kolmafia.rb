cask "kolmafia" do
  version "26824"
  sha256 "aedfbb40b0d949f894626157cbf35801f8a443e18669d88563df163660770560"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26824/KoLmafia-22.10.26824.dmg",
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
