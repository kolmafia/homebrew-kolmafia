cask "kolmafia" do
  version "26826"
  sha256 "5a4439f71499222aaa01c675a5ebb69e350d084e512e113c37ca42d7d55c84b1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26826/KoLmafia-22.10.26826.dmg",
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
