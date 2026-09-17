cask "kolmafia" do
  version "29277"
  sha256 "16ecc796add82d57801a101418d5c76537384184d9e0387deba9534ed3640c8a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29277/KoLmafia-26.09.29277.dmg",
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
