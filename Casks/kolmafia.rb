cask "kolmafia" do
  version "26858"
  sha256 "01b6223ddc86d5837f77bdd15abc9a00f6b8b76515d25160e9a634fc4064ddb6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26858/KoLmafia-22.10.26858.dmg",
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
