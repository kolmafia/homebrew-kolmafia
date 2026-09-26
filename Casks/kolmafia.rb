cask "kolmafia" do
  version "29298"
  sha256 "5ee2373ea49eaa3e509ef0ef5e7ac3ea4437f33462d9588124a752097aa8d83d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29298/KoLmafia-26.09.29298.dmg",
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
