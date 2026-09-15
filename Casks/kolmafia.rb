cask "kolmafia" do
  version "29266"
  sha256 "7809edd6560530e9ad8759e19135170fb8e8b0f0801c97a4ed0fcc237f2d0aa5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29266/KoLmafia-26.09.29266.dmg",
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
