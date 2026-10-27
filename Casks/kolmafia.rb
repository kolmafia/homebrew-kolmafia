cask "kolmafia" do
  version "29393"
  sha256 "881bacd6ab345fccc834e5fbf9d772bea0da082d00a30b87b68356737a511044"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29393/KoLmafia-26.10.29393.dmg",
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
