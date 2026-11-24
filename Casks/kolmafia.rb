cask "kolmafia" do
  version "29470"
  sha256 "5e5371224b54f327afbaaba89ea1335e573ef679824745169feeba1d311941ac"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29470/KoLmafia-26.11.29470.dmg",
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
