cask "kolmafia" do
  version "26544"
  sha256 "0ed98c2fe83e838bbafed5c472cb9303ffe14273d8c75a605f94a3ac0475a4d8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26544/KoLmafia-22.07.26544.dmg",
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
