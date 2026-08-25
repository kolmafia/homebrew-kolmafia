cask "kolmafia" do
  version "29187"
  sha256 "83b387c3e23e6fd9c533e5e10e6b6c26109f14c43de57a7a724fa0456bd8e87f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29187/KoLmafia-26.08.29187.dmg",
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
