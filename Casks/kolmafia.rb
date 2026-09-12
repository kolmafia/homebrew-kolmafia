cask "kolmafia" do
  version "29256"
  sha256 "553fb098b010a13cde8d434d6dca148363df3aa8b2f553dbc6fd77507dee32b2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29256/KoLmafia-26.09.29256.dmg",
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
