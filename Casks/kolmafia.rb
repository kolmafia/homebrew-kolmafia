cask "kolmafia" do
  version "29315"
  sha256 "d49cf580dae2a1c720265648cd70eb8d6de30d43120873c94a0be07d146d4000"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29315/KoLmafia-26.09.29315.dmg",
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
