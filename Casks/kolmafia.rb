cask "kolmafia" do
  version "26899"
  sha256 "c8d6581ec8c7169bd363ac441c8f055d91f839d29700c9e5f85a76b97c2652c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26899/KoLmafia-22.11.26899.dmg",
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
