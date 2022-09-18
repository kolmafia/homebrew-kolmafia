cask "kolmafia" do
  version "26761"
  sha256 "d7de566e1d33d47872dec3234f8f9c89b66fe6c229e0a4cdc006254b46f58965"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26761/KoLmafia-22.09.26761.dmg",
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
