cask "kolmafia" do
  version "29184"
  sha256 "cd9f82281a2694e2c46e70a95f5f289e3e92fb71d5510e6a7e428013ccf5dea2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29184/KoLmafia-26.08.29184.dmg",
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
