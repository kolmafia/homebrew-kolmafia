cask "kolmafia" do
  version "26710"
  sha256 "17545e84df1daeaec9084cc76a5e4270408e290a737ded406db805e8aee7f2e3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26710/KoLmafia-22.08.26710.dmg",
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
