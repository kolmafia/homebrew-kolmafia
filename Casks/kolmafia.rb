cask "kolmafia" do
  version "29454"
  sha256 "3b5551636aa1056442a581fe8487d350e9fa6f4469f30cadd4cdd9367b1812f3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29454/KoLmafia-26.11.29454.dmg",
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
