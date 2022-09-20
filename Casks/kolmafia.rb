cask "kolmafia" do
  version "26768"
  sha256 "4f60db5a4b2f41a42b141b35657dcddbd17149f2f9242e13517dbbedaf795021"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26768/KoLmafia-22.09.26768.dmg",
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
