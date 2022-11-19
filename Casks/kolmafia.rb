cask "kolmafia" do
  version "26967"
  sha256 "921bd8f64a90c729ae42ae8720fbc190a342100751fcfdf1a78d0be0fb90c1c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26967/KoLmafia-22.11.26967.dmg",
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
