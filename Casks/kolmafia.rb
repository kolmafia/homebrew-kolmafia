cask "kolmafia" do
  version "26788"
  sha256 "3b78cce93672ae6cfe46782eb809addb7f04bf1f0d4718b86f5fe6ce2b4829b2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26788/KoLmafia-22.09.26788.dmg",
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
