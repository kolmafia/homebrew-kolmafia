cask "kolmafia" do
  version "29253"
  sha256 "8dd9f1ca363979b7717101e44e7e9e1585fb55a57f2aeaf93f7d637acda40469"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29253/KoLmafia-26.09.29253.dmg",
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
