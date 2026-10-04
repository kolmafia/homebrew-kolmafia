cask "kolmafia" do
  version "29330"
  sha256 "bbba16987117a40d3ff7cbff36c1a67c0429fca9c283048cc7e9b5e48606cf6b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29330/KoLmafia-26.10.29330.dmg",
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
