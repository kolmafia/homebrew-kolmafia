cask "kolmafia" do
  version "29469"
  sha256 "7921dcf180c47029c48db35ad157d75add2058cf743bfa3e7a0ab8479ace2cf7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29469/KoLmafia-26.11.29469.dmg",
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
