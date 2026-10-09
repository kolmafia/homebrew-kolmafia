cask "kolmafia" do
  version "29356"
  sha256 "277f1dc58ceb51166ca5ee1912c75dd75bee6a53aeb4a7e12cfe6c8f88aa66ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29356/KoLmafia-26.10.29356.dmg",
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
