cask "kolmafia" do
  version "29311"
  sha256 "1014fcf1c3d36455715b20f36afd4f409cc718f834df3e2b4d4e362184cd8744"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29311/KoLmafia-26.09.29311.dmg",
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
