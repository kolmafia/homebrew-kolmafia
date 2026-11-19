cask "kolmafia" do
  version "29450"
  sha256 "755fe7577f0355f9fcc4117d677c30f844e3c358e6e66111567d5f64b60bf13a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29450/KoLmafia-26.11.29450.dmg",
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
