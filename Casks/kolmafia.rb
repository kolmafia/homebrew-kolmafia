cask "kolmafia" do
  version "26975"
  sha256 "3e8955269ff8092d22f2fe2a0cf8371d4622657573053363629cce25472c9988"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26975/KoLmafia-22.11.26975.dmg",
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
