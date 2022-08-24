cask "kolmafia" do
  version "26694"
  sha256 "2c13f0fd3b59613ba8c24b4d341a1f446cc33793aee2fcd85b249556bca00859"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26694/KoLmafia-22.08.26694.dmg",
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
