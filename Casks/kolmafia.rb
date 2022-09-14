cask "kolmafia" do
  version "26746"
  sha256 "cec5b819a0ae60016d8252f304913229dd18035e547865fd1b6d1065a9fc31c3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26746/KoLmafia-22.09.26746.dmg",
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
