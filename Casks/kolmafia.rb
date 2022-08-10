cask "kolmafia" do
  version "26648"
  sha256 "3fc204d37900a298696d68425a8dbfdda5b0e0dc53c604d72d32a57077c5fc8b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26648/KoLmafia-22.08.26648.dmg",
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
