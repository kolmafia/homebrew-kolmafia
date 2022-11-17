cask "kolmafia" do
  version "26954"
  sha256 "4051f653c447a6e525f8296f18e9b9e925b5a0f878bfe7c7d500f3fe3440b673"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26954/KoLmafia-22.11.26954.dmg",
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
