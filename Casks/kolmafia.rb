cask "kolmafia" do
  version "29349"
  sha256 "5b3745fd52c4c7b402184498fd38d8df32d7f3868b67146e63035fedadd2b854"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29349/KoLmafia-26.10.29349.dmg",
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
