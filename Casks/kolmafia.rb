cask "kolmafia" do
  version "29309"
  sha256 "5a5e8663e663deec3dc3890316d25020989e041e1badcd524a78cadac38a0e0f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29309/KoLmafia-26.09.29309.dmg",
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
