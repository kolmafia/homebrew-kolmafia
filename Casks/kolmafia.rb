cask "kolmafia" do
  version "29486"
  sha256 "dc67be1660a96500caa70218d820b0f320aadf0f730a930dabcb1ccaf0f453e7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29486/KoLmafia-26.11.29486.dmg",
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
