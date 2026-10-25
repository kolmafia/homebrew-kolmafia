cask "kolmafia" do
  version "29389"
  sha256 "926489e1258b8b0658c5c1d27c7ee1beac7a021745c4139d08f395e843e3b16b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29389/KoLmafia-26.10.29389.dmg",
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
