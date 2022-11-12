cask "kolmafia" do
  version "26932"
  sha256 "a4289e828a11a036ff352ce4a5a437a385a6fb888b617b0c4b2c69c3d5344b28"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26932/KoLmafia-22.11.26932.dmg",
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
