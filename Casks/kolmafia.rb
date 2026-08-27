cask "kolmafia" do
  version "29196"
  sha256 "6cc22047ad77c7efa8147c6e9d3d56254b708bc0ff972245ea4e36eb5585635c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29196/KoLmafia-26.08.29196.dmg",
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
