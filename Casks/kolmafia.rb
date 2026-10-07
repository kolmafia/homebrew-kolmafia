cask "kolmafia" do
  version "29348"
  sha256 "665ae0fde5bc4ee27a1859c2fbc97e166dde7b7a187424c4793dce88073bbf20"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29348/KoLmafia-26.10.29348.dmg",
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
