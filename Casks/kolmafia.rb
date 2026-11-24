cask "kolmafia" do
  version "29471"
  sha256 "6ce454cb356b4d14efea2fee8fd160b39b0a37bfa75d95cd0c4343eccc7a894d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29471/KoLmafia-26.11.29471.dmg",
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
