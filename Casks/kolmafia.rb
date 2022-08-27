cask "kolmafia" do
  version "26704"
  sha256 "047942bfbb54a161cce97eb455174c22ebba3f55ac243ee6b1b537bcb39c190b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26704/KoLmafia-22.08.26704.dmg",
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
