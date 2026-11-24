cask "kolmafia" do
  version "29473"
  sha256 "4b3a3022fb2ae4f1d44ee631202abdea1456377b68645f26c5ad8536f594e759"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29473/KoLmafia-26.11.29473.dmg",
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
