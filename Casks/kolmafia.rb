cask "kolmafia" do
  version "29226"
  sha256 "5114498bb2838bf033f5a6551d433dda447a5a843eff37a1afb41822bd4d94f3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29226/KoLmafia-26.09.29226.dmg",
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
