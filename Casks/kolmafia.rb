cask "kolmafia" do
  version "26845"
  sha256 "cb0c9febf5452473bc40e21b2f76dd3a07a5111e9ef9d1c45828f57a6027f097"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26845/KoLmafia-22.10.26845.dmg",
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
