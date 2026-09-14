cask "kolmafia" do
  version "29262"
  sha256 "0eb09672c7eeedd9708e69ec40e870c9199941e2e81a239afeebf7bf3e6fcadd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29262/KoLmafia-26.09.29262.dmg",
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
