cask "kolmafia" do
  version "26657"
  sha256 "fae3025c4edea462fd5acb7d12afe5a5e09e3f37822cf8b6a4eb46dec6315cb4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26657/KoLmafia-22.08.26657.dmg",
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
