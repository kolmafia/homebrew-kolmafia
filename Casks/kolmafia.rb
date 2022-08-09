cask "kolmafia" do
  version "26636"
  sha256 "50a672fae121ae971fd3da61b155d097c680fa753b48cb469e46308433208e31"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26636/KoLmafia-22.08.26636.dmg",
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
