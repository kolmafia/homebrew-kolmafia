cask "kolmafia" do
  version "29333"
  sha256 "c19582ba7d268586fe186538aa1c997a0ed542ff0c43b99978c3773410e8c4bb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29333/KoLmafia-26.10.29333.dmg",
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
