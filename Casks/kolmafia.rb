cask "kolmafia" do
  version "29410"
  sha256 "ce2b29d719677218c0d33d7f6822f473bb88a91e7aeda09debc90df0ac9fdba9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29410/KoLmafia-26.11.29410.dmg",
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
