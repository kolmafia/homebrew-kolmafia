cask "kolmafia" do
  version "26546"
  sha256 "2bbbcb15a6d42372c3bf51bc76b7b77e26cd3c83ef01b1e4f3b0707f5092ffc3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26546/KoLmafia-22.07.26546.dmg",
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
