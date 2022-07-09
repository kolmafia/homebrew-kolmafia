cask "kolmafia" do
  version "26545"
  sha256 "e85090cd687ea08ed09caeaecaaeea97c34040695ad02678df50fd73ab371e57"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26545/KoLmafia-22.07.26545.dmg",
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
