cask "kolmafia" do
  version "26852"
  sha256 "2a2d6a6d9717f107a00e6e115a75ca1a24d5e5dccafc16e5936b67ef77a749b3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26852/KoLmafia-22.10.26852.dmg",
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
