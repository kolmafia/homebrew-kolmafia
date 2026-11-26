cask "kolmafia" do
  version "29482"
  sha256 "5959247d708f0a0fe3232bc46bdea20c56eea9ae9ced1f4fb9f2a86464083daf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29482/KoLmafia-26.11.29482.dmg",
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
