cask "kolmafia" do
  version "29354"
  sha256 "2b03c9db1fab3d0205032a21ff9fd7970782ea13a14be734a326a9385f2a96af"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29354/KoLmafia-26.10.29354.dmg",
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
