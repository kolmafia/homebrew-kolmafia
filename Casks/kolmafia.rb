cask "kolmafia" do
  version "29404"
  sha256 "621ba676b781b8013675110af088e9f1698947e91dd66e6615bffd574ae72a36"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29404/KoLmafia-26.11.29404.dmg",
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
