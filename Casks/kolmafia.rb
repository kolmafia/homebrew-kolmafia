cask "kolmafia" do
  version "29289"
  sha256 "7056919a22ddc4d5744c0c65d1348619621e7f1fee834a8b3e15ce73fc992417"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29289/KoLmafia-26.09.29289.dmg",
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
