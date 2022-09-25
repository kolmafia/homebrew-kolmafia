cask "kolmafia" do
  version "26791"
  sha256 "aee6e6bd6829d7cd087ea34be70f94861c56e63ce49d54fcc9513cfbf628ffc1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26791/KoLmafia-22.09.26791.dmg",
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
