cask "kolmafia" do
  version "29365"
  sha256 "749d7b98048230d21b51abde658b48787fd32ac59a6c1b98feeb8a9bed470610"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29365/KoLmafia-26.10.29365.dmg",
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
