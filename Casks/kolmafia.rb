cask "kolmafia" do
  version "26615"
  sha256 "3153988af127a1282461530b2034da067b05681ee83311ea5cea9c6b05c40bd4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26615/KoLmafia-22.07.26615.dmg",
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
