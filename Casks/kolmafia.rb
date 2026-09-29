cask "kolmafia" do
  version "29313"
  sha256 "f85e6794ee6e356a36cef9a3495fcbb3ed710edadb2b6991dca501492ccd7c10"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29313/KoLmafia-26.09.29313.dmg",
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
