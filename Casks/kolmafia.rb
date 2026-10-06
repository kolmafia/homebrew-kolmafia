cask "kolmafia" do
  version "29343"
  sha256 "1bd32d162d2cec6484c56e476d335914dc420be2c4bd365a2ab7078952b3ec18"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29343/KoLmafia-26.10.29343.dmg",
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
