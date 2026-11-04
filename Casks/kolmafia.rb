cask "kolmafia" do
  version "29408"
  sha256 "23febc9fbf909b55fd7a490df856fc69d21b37a67fd5c493fa28d0fa0c9252df"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29408/KoLmafia-26.11.29408.dmg",
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
