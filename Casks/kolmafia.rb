cask "kolmafia" do
  version "29401"
  sha256 "dc699325efbf222494d31dfd94702921f5f3bf8c754012e9ffd8ea0fc7c4524e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29401/KoLmafia-26.10.29401.dmg",
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
