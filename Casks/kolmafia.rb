cask "kolmafia" do
  version "26938"
  sha256 "1b8b8fde502afc7eaa2888e393118e81df16ae662ac51f417f0342418aff605b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26938/KoLmafia-22.11.26938.dmg",
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
