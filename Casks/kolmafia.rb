cask "kolmafia" do
  version "29171"
  sha256 "9afc142abdf2fc042a36b3bcda5a064df88fb021a229bd10a3673ce4c2415452"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29171/KoLmafia-26.08.29171.dmg",
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
