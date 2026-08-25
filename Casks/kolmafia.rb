cask "kolmafia" do
  version "29185"
  sha256 "abbd2c8676e9c5b385f9c423ed7276d48fe899f475b20441cff7e99b6d492058"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29185/KoLmafia-26.08.29185.dmg",
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
