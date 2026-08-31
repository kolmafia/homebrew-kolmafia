cask "kolmafia" do
  version "29207"
  sha256 "5c5b37a88f689284636480e1da05ad68f5d02be3f4f0c7e99c3e531beaa080e0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29207/KoLmafia-26.08.29207.dmg",
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
