cask "kolmafia" do
  version "26787"
  sha256 "92f774a0704c1a6772caf8a15f86b6245c568fd519f0498293247e2a7a079715"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26787/KoLmafia-22.09.26787.dmg",
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
