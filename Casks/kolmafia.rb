cask "kolmafia" do
  version "29154"
  sha256 "f04c08c18d56a38cad63fe5fcb290f5827b00715492265d045d7059b8b93fb44"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29154/KoLmafia-26.08.29154.dmg",
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
