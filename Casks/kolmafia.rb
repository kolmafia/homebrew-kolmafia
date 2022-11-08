cask "kolmafia" do
  version "26915"
  sha256 "7d48fff37b4f32f2e31d76240615ebe48d6a4a79dfa3c864e8cb4904d7d31e43"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26915/KoLmafia-22.11.26915.dmg",
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
