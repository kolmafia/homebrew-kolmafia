cask "kolmafia" do
  version "29451"
  sha256 "7167dd3d11aa5197cd32b6be7a27bfc981ea7398e52c5e5b49ea3ce81321cc08"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29451/KoLmafia-26.11.29451.dmg",
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
