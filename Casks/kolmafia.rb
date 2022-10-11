cask "kolmafia" do
  version "26834"
  sha256 "50fe82a668e2cd94b4ccb86e0d2d06e8635d505369fbbbb084e8e56e9c805c40"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26834/KoLmafia-22.10.26834.dmg",
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
