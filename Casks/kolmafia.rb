cask "kolmafia" do
  version "26825"
  sha256 "07f36f1f71676ec712449c84e4a145736ab022c4dac1141b280b12b05cc9e223"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26825/KoLmafia-22.10.26825.dmg",
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
