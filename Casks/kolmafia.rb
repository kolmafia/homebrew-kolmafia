cask "kolmafia" do
  version "29336"
  sha256 "3594016627ce3062d15ca81f0cf81e1a386a0bb190812062b4d469913f7b611d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29336/KoLmafia-26.10.29336.dmg",
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
