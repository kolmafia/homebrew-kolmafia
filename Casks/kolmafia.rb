cask "kolmafia" do
  version "26873"
  sha256 "a041ca67275725ba3d0881361da8597ac2e1543851cf595da2835800f5c60ef7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26873/KoLmafia-22.10.26873.dmg",
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
