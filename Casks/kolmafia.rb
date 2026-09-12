cask "kolmafia" do
  version "29254"
  sha256 "ce1123c9671a9204071d84af7003114929fa52ca3e3fd328c5eb9c7b12fb5d80"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29254/KoLmafia-26.09.29254.dmg",
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
