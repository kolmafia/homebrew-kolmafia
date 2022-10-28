cask "kolmafia" do
  version "26884"
  sha256 "06b4ee5e028660367a946e68463eac1288d00e4dec54d22546ae7a55cd460c98"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26884/KoLmafia-22.10.26884.dmg",
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
