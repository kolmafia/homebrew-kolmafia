cask "kolmafia" do
  version "26617"
  sha256 "064ae77c719e496d115f34018bd6823849b7dc9a4514bb464a79b2b6a727f38e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26617/KoLmafia-22.07.26617.dmg",
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
