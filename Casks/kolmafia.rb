cask "kolmafia" do
  version "26862"
  sha256 "c6cb5ebfd9d05130261eab79510dcca908a3cfdbf2ed2701f0c68acf503f585e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26862/KoLmafia-22.10.26862.dmg",
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
