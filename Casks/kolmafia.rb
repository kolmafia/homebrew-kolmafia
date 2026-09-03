cask "kolmafia" do
  version "29225"
  sha256 "37c2d391f5b63569cd7f71abe2b36f969eadd1ae4ccedc3f786500a7b97c4eed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29225/KoLmafia-26.09.29225.dmg",
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
