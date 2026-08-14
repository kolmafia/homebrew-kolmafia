cask "kolmafia" do
  version "29163"
  sha256 "1ef6e4d06a97f85244856415b15cbdc082884d17bf158906dc4a3de0a20acfdc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29163/KoLmafia-26.08.29163.dmg",
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
