cask "kolmafia" do
  version "29186"
  sha256 "8b7fc86d4858560308cf8a8d8c9f380a6a262779c02711652071a3a2af5af497"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29186/KoLmafia-26.08.29186.dmg",
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
