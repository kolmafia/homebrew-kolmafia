cask "kolmafia" do
  version "29170"
  sha256 "064cba2ff03063c062b41a3760e39ddb4aac69ddaa9dc37970c31b07aa29683c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29170/KoLmafia-26.08.29170.dmg",
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
