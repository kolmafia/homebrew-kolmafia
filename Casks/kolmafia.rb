cask "kolmafia" do
  version "29386"
  sha256 "b5fd5c197a16c84a10aba22072c7db1cb58aabbc06858cbabfe4267f406c99a0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29386/KoLmafia-26.10.29386.dmg",
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
