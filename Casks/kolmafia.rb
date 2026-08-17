cask "kolmafia" do
  version "29168"
  sha256 "58f1ec23000e780f3368f6d994d700c37dc52eea7bd00a578d5937fd20cc7642"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29168/KoLmafia-26.08.29168.dmg",
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
