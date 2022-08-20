cask "kolmafia" do
  version "26672"
  sha256 "dc1ca11594755e05a878f07f604842150e01f9a3d47eaf7553658e817186b63d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26672/KoLmafia-22.08.26672.dmg",
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
