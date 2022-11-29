cask "kolmafia" do
  version "26983"
  sha256 "6e54fe7d27a67d8fb40765fd46d8be3d959752557fef0f58f7691a88461822b3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26983/KoLmafia-22.11.26983.dmg",
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
