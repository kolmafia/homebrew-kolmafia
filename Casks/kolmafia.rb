cask "kolmafia" do
  version "26560"
  sha256 "88a5e85ff862c0c77601987d9ac836f89b2406d87bc3138386ea6473c1b90314"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26560/KoLmafia-22.07.26560.dmg",
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
