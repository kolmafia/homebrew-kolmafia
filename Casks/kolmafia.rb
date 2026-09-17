cask "kolmafia" do
  version "29278"
  sha256 "744dfd1931d1f19b01b33519b3f18cb15050297c30280a4ef8f783e8345be4ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29278/KoLmafia-26.09.29278.dmg",
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
