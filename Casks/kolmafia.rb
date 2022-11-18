cask "kolmafia" do
  version "26964"
  sha256 "47f675d27e899412d1861668e932bedf6c89012ce6571353e5983329803ffc01"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26964/KoLmafia-22.11.26964.dmg",
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
