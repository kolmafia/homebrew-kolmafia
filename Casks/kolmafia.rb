cask "kolmafia" do
  version "29158"
  sha256 "f4caad0ca61658663d525fcdbec10b4d7a8c83921a8ff76974d629e3c3df2469"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29158/KoLmafia-26.08.29158.dmg",
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
