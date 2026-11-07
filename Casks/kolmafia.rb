cask "kolmafia" do
  version "29412"
  sha256 "da834e03b81fc4e716828e36d335d1acf8c2e77d1aed844426df5857cf988621"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29412/KoLmafia-26.11.29412.dmg",
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
