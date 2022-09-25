cask "kolmafia" do
  version "26794"
  sha256 "afeb42bb2d7c1bce60040df601c21870468953fe7baeadb75d0248fc1870de4a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26794/KoLmafia-22.09.26794.dmg",
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
