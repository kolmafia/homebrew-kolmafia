cask "kolmafia" do
  version "26562"
  sha256 "00031b89dc905d4a5f5a9ca7250668b6afeef38c08eca5c7d48cb9a074929278"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26562/KoLmafia-22.07.26562.dmg",
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
