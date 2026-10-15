cask "kolmafia" do
  version "29370"
  sha256 "db9a75eece5c42e19f738ba2b72b125d3669201b2b5c2f1f43201167994abbc9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29370/KoLmafia-26.10.29370.dmg",
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
