cask "kolmafia" do
  version "26652"
  sha256 "73596688930eb696eab222524f4a36662cdb7d2055befe868e58cc351c115dc5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26652/KoLmafia-22.08.26652.dmg",
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
