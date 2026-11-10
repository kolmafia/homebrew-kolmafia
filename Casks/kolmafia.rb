cask "kolmafia" do
  version "29422"
  sha256 "b2a887ff956ab651250b4e4f1d602833d4f79b2b09f072c038b5d758c9bbe425"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29422/KoLmafia-26.11.29422.dmg",
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
