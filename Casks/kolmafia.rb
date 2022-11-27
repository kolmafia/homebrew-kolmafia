cask "kolmafia" do
  version "26982"
  sha256 "7e90cabaa0f6af464199900dfd7f7cb7976b35b8215ad4b349abf277f7d14587"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26982/KoLmafia-22.11.26982.dmg",
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
