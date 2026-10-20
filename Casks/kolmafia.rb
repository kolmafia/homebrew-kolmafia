cask "kolmafia" do
  version "29379"
  sha256 "191854f7df5cc23d066bdc95ed33f6a959d1114834bf860247ba0c719503e45a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29379/KoLmafia-26.10.29379.dmg",
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
