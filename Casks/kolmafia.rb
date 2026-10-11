cask "kolmafia" do
  version "29363"
  sha256 "f87b671f5a09a3c25e90820690e62040ef657499062cd2295f3ea4cb973c1982"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29363/KoLmafia-26.10.29363.dmg",
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
