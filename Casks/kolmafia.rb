cask "kolmafia" do
  version "26572"
  sha256 "a402f8abe84d9e9d84658c295dabf82b2c05071b235df9a3b7e5db76d46a6147"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26572/KoLmafia-22.07.26572.dmg",
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
