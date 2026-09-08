cask "kolmafia" do
  version "29243"
  sha256 "25c37c527ccd5e9a53efe5dde46c1a5a3f479a61214a6cfa27288fb2ae6a584e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29243/KoLmafia-26.09.29243.dmg",
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
