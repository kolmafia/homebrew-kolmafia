cask "kolmafia" do
  version "26613"
  sha256 "e61914c3e9a00ab75f515d84efde449735c1a5e3eb14213d1aa728a5dd6925ed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26613/KoLmafia-22.07.26613.dmg",
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
