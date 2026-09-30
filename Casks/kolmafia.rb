cask "kolmafia" do
  version "29318"
  sha256 "b44609abeb3ae43580e61ae5cf56c2d75ae4d856b77c4a439b54cf680072e67d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29318/KoLmafia-26.09.29318.dmg",
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
