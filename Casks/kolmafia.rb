cask "kolmafia" do
  version "29271"
  sha256 "f436a85410815ec470a535d51ba442fa1c6020b0b1d8a4c81772dd57b66547c5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29271/KoLmafia-26.09.29271.dmg",
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
