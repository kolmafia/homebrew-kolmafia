cask "kolmafia" do
  version "26565"
  sha256 "f6622dbcc83d454bed5f93e79fb4b76aa551182c0bd7fa8c9dd141c8cf07838a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26565/KoLmafia-22.07.26565.dmg",
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
