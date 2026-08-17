cask "kolmafia" do
  version "29169"
  sha256 "e48ad29299d159310137551f7a4b4e21308809d32e801e66fae86a07fb6f70af"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29169/KoLmafia-26.08.29169.dmg",
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
