cask "kolmafia" do
  version "29245"
  sha256 "e687f5b10cc86fd2d3f1eaa639df50ba5c46271e7611f687b12be42bd237092f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29245/KoLmafia-26.09.29245.dmg",
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
