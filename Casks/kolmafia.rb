cask "kolmafia" do
  version "29283"
  sha256 "93c79c366dddea849a539178838ed99cc085059f0fb1fe416e57940e5ec31bc2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29283/KoLmafia-26.09.29283.dmg",
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
