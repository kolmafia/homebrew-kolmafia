cask "kolmafia" do
  version "29360"
  sha256 "3f5e92c95a41922246cbe6c4dc55d98aa51e2f59dd785134b68879ae7c2a6ea8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29360/KoLmafia-26.10.29360.dmg",
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
