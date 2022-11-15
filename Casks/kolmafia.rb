cask "kolmafia" do
  version "26951"
  sha256 "0ac2b6f47cc98d70512978df7f6301c7e64f4fc787fdd6a8c499ac23756fec96"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26951/KoLmafia-22.11.26951.dmg",
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
