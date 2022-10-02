cask "kolmafia" do
  version "26806"
  sha256 "cb9b976ec6cab5a385cc05a872864d0cb31ceeeb50c6bcd4cbb6c5933ced847a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26806/KoLmafia-22.10.26806.dmg",
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
