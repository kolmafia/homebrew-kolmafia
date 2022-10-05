cask "kolmafia" do
  version "26811"
  sha256 "51cdd683a49839bcd7645553068a24fd2f1f318c92247d3d966d3beca0d53484"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26811/KoLmafia-22.10.26811.dmg",
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
