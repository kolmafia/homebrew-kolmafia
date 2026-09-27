cask "kolmafia" do
  version "29303"
  sha256 "97baa2e4ccb1379a4f9ab0c4f9cb09340c41dbb810cb3d337b6efa8af690fe7c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29303/KoLmafia-26.09.29303.dmg",
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
