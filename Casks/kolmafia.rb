cask "kolmafia" do
  version "26665"
  sha256 "393c36c4fc53e5e1ca033e3137e2c5610c13fa9a6cc09c6f20d007a4e69b4768"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26665/KoLmafia-22.08.26665.dmg",
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
