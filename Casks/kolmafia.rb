cask "kolmafia" do
  version "29319"
  sha256 "b6b9cda663719d7800be7ce6d419c920d3a9b54dfc697e72058c142047b6c1e9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29319/KoLmafia-26.09.29319.dmg",
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
