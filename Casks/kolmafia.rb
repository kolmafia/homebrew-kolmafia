cask "kolmafia" do
  version "29425"
  sha256 "36e9e31a3d06e2611131e49313898b985a08d2af463849e78ed8f29b41d8868a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29425/KoLmafia-26.11.29425.dmg",
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
