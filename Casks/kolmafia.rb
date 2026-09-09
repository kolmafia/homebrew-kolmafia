cask "kolmafia" do
  version "29244"
  sha256 "947d0cc58739467a54b3a196664a8963b62d411240612656e851b6524b538f61"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29244/KoLmafia-26.09.29244.dmg",
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
