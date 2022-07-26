cask "kolmafia" do
  version "26605"
  sha256 "89b77cf49dfce07d79fa2a54b67f4fef8665235e0624a03b3e88b0a5339a98f7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26605/KoLmafia-22.07.26605.dmg",
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
