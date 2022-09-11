cask "kolmafia" do
  version "26737"
  sha256 "fff8095784dabe72f4b0e0e631e2dbff54868219e8150e449347dd87fc06b85e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26737/KoLmafia-22.09.26737.dmg",
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
