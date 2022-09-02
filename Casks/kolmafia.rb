cask "kolmafia" do
  version "26719"
  sha256 "ffded1270e6adcae52f82b3371a769b2e96d9098b7038b86cc7ae7493df6a9fe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26719/KoLmafia-22.09.26719.dmg",
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
