cask "kolmafia" do
  version "26702"
  sha256 "e9f58ae46ce9fea5cfc11d1252e31ee6ed223873fb1d8d62a14834a13e24a895"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26702/KoLmafia-22.08.26702.dmg",
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
