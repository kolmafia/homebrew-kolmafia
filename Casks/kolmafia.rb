cask "kolmafia" do
  version "29275"
  sha256 "7c23dc9faeed092fc02ae7570dbfcd46b48af28c624cbdced96a0afe497c774e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29275/KoLmafia-26.09.29275.dmg",
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
