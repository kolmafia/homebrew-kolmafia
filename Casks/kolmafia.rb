cask "kolmafia" do
  version "26639"
  sha256 "5cbfc46393e6c9f453cf6e38b855f35a041cc87cc1291007c8b9e9bc3e2e74af"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26639/KoLmafia-22.08.26639.dmg",
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
