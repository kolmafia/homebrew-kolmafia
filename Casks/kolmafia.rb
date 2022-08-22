cask "kolmafia" do
  version "26685"
  sha256 "d9218159fd6efce45a9f933cfc53aa1b29c9aa8dbc01ad22363c55979094402b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26685/KoLmafia-22.08.26685.dmg",
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
