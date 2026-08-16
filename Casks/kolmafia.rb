cask "kolmafia" do
  version "29164"
  sha256 "318b87cf4242702a70f6d2b41fc2039edb768256cd04c7014196c329cf344dc8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29164/KoLmafia-26.08.29164.dmg",
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
