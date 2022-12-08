cask "kolmafia" do
  version "26993"
  sha256 "3f8afd9f0452ebc3f67879da44665e61bb9364624f81b7ac34423e2044c9f413"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26993/KoLmafia-22.12.26993.dmg",
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
