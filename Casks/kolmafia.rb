cask "kolmafia" do
  version "29216"
  sha256 "4cd2d697c864d7edb565407387ccbff0318f34263686108080168264150a8355"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29216/KoLmafia-26.08.29216.dmg",
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
