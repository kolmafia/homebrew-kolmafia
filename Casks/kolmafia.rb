cask "kolmafia" do
  version "29219"
  sha256 "e477019999091ef1622fc912f67a476801d6da3c08b5ffa1a04c5ee4aacc9f9a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29219/KoLmafia-26.09.29219.dmg",
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
