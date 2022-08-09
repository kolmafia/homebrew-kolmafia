cask "kolmafia" do
  version "26633"
  sha256 "f55de2d63e47fc53d13f7aaa186ffc128af3e3c7954369226db3dd8c96c12fcb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26633/KoLmafia-22.08.26633.dmg",
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
