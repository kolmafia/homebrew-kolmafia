cask "kolmafia" do
  version "29160"
  sha256 "2339a8d596e9a36a877626216f7bfa372715e25fcb93868d85be482c96b2afc8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29160/KoLmafia-26.08.29160.dmg",
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
