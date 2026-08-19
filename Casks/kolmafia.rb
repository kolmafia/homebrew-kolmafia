cask "kolmafia" do
  version "29173"
  sha256 "f82786ceea72003a819f90256937adf3551fc6cc8cf8a74441b947b40fe4bc2a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29173/KoLmafia-26.08.29173.dmg",
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
