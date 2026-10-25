cask "kolmafia" do
  version "29387"
  sha256 "2e1ffe24323fd1e51c91af5b3c90eb1ed8dc80c1219f56f5a4609e931f7ba6ca"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29387/KoLmafia-26.10.29387.dmg",
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
