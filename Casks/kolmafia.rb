cask "kolmafia" do
  version "26856"
  sha256 "3e4d8818d40120065d792a22c408869a5b8a54b71d4ea483a4b89d02a7dbfa81"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26856/KoLmafia-22.10.26856.dmg",
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
