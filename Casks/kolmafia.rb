cask "kolmafia" do
  version "29374"
  sha256 "f1d8cdc461897144d2b97d14fbc5103d4b6d00799d6d142c8ea8eb787d1e89a1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29374/KoLmafia-26.10.29374.dmg",
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
