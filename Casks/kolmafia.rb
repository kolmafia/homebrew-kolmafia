cask "kolmafia" do
  version "29419"
  sha256 "7942a5c10090971a6d36dbeae29edf5b5088473e994358c885db396c4b2c2c33"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29419/KoLmafia-26.11.29419.dmg",
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
