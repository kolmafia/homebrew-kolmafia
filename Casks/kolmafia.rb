cask "kolmafia" do
  version "26835"
  sha256 "5b7aa8abde6c69a6eae0f4fdb5ea2cb444bd47667d4d00c599bc9a2f45caf839"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26835/KoLmafia-22.10.26835.dmg",
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
