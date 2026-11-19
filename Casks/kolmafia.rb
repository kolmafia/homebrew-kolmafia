cask "kolmafia" do
  version "29449"
  sha256 "8db100c70f935b353d8e5b80dc9ae4327d29734272747c8736aef90ca8ea366a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29449/KoLmafia-26.11.29449.dmg",
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
