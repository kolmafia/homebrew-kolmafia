cask "kolmafia" do
  version "29444"
  sha256 "9e293a5a049fd8a6ae99dafa685c12672683511646364d28f54190ccedd59596"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29444/KoLmafia-26.11.29444.dmg",
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
