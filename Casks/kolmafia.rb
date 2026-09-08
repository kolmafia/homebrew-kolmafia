cask "kolmafia" do
  version "29242"
  sha256 "6eee70e4edd45d8a112b6e8e3e30cae83c8653ae469b7a2fc4d1a00ef8bae18a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29242/KoLmafia-26.09.29242.dmg",
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
