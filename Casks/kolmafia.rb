cask "kolmafia" do
  version "26743"
  sha256 "c18068a89197c896ee58ad9682c0acb1fe576a2ecd3d6f8f6ea4a985303a662e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26743/KoLmafia-22.09.26743.dmg",
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
