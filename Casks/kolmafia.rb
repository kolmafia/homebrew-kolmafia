cask "kolmafia" do
  version "29295"
  sha256 "b0e247b89b8dc4eb1cbb83e7f1ecc62f6e05771e3ac38714cdf5f658030e7e5c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29295/KoLmafia-26.09.29295.dmg",
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
