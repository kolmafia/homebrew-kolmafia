cask "kolmafia" do
  version "29340"
  sha256 "985b76be51ca1157e19ee674e40adf704b5283ac0fa81d808edf8dc57f2a72ea"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29340/KoLmafia-26.10.29340.dmg",
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
