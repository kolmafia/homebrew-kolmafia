cask "kolmafia" do
  version "29199"
  sha256 "567b077860b6784fb8e527f85141dba6dbb6c1502630c7285dbb41775ca064e8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29199/KoLmafia-26.08.29199.dmg",
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
