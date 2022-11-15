cask "kolmafia" do
  version "26952"
  sha256 "41845004cecfe97e3e9bf9b93b8e3e7393645f0ea376116f7af41413c253366d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26952/KoLmafia-22.11.26952.dmg",
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
