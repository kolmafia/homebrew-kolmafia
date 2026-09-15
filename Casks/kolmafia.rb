cask "kolmafia" do
  version "29264"
  sha256 "be9e888f7b1d377e3ec7ddd9f16b5fd5735232b458d79aabaf1b7200c9edaa11"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29264/KoLmafia-26.09.29264.dmg",
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
