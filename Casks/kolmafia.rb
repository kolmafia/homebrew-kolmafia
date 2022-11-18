cask "kolmafia" do
  version "26963"
  sha256 "a5f01350aec68e2412aee655594fe9ee5b1bc8ab26b5a5edfcf44f99674757e1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26963/KoLmafia-22.11.26963.dmg",
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
