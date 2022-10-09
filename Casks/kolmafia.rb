cask "kolmafia" do
  version "26827"
  sha256 "a4348ddf18b54ff06e922f041f1c20448c580ccd79ef336686dde9fcb894807e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26827/KoLmafia-22.10.26827.dmg",
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
