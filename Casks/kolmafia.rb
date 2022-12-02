cask "kolmafia" do
  version "26989"
  sha256 "c4bb4a1899e8a91b63b23e2994894276868bc979bb0d4bcf3821c26fe66cd291"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26989/KoLmafia-22.12.26989.dmg",
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
