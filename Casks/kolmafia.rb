cask "kolmafia" do
  version "29274"
  sha256 "f7e1500013529b41ce618d8b38e7478c21eee51627ce624b63f856636c294db0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29274/KoLmafia-26.09.29274.dmg",
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
