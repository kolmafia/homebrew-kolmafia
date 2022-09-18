cask "kolmafia" do
  version "26762"
  sha256 "6c5caec30b2ab7262c484bd43348064e6f8f1ad0eeaf8fb560a0fba96b03c443"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26762/KoLmafia-22.09.26762.dmg",
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
