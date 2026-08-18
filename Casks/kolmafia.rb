cask "kolmafia" do
  version "29172"
  sha256 "e20b312327bcdc357e657e1f89906c19407785381bd61bad5fb5f9d10419a4a2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29172/KoLmafia-26.08.29172.dmg",
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
