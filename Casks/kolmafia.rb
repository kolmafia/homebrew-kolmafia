cask "kolmafia" do
  version "29342"
  sha256 "8b7937fc7b1a957fe6bf48f6fc302c4f2f188cbb9f9dc8801b0e00e62dfbf7e3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29342/KoLmafia-26.10.29342.dmg",
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
