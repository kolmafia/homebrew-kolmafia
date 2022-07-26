cask "kolmafia" do
  version "26606"
  sha256 "1d7ab3c3cb79e0b845409733c5b0a1dd061904b79a9c8a02aad722ffb600731a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26606/KoLmafia-22.07.26606.dmg",
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
