cask "kolmafia" do
  version "26609"
  sha256 "de4fbf6c8a1c565a3fd320c4a9728187ede4c79a2064407bf13db77a778b8779"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26609/KoLmafia-22.07.26609.dmg",
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
