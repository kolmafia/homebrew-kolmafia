cask "kolmafia" do
  version "26744"
  sha256 "8685035e34f976f691a4849ea5cde14f0f7d94718e24d723f296e6b57c58302e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26744/KoLmafia-22.09.26744.dmg",
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
