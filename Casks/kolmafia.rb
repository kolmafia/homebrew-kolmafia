cask "kolmafia" do
  version "29284"
  sha256 "7b466e23e396db8ca710ac6d368abeca3135c8c1267940ef2562e80baa4a91d4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29284/KoLmafia-26.09.29284.dmg",
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
