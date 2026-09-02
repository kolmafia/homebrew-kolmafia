cask "kolmafia" do
  version "29220"
  sha256 "c1260dcab837f44d84c1ea500b0923db57c41a6ded6f5e8ebc9240b245101569"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29220/KoLmafia-26.09.29220.dmg",
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
