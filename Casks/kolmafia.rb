cask "kolmafia" do
  version "29384"
  sha256 "11df3a9710f6c891c9604d375b2925e633b2ba0fe9e5f8eac599e37ceb15b8b6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29384/KoLmafia-26.10.29384.dmg",
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
