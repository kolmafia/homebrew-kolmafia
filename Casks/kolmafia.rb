cask "kolmafia" do
  version "26748"
  sha256 "734677101ca82836040965cda6ce2c3cca04796898e06b88f6e728d8fd604999"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26748/KoLmafia-22.09.26748.dmg",
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
