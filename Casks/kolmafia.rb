cask "kolmafia" do
  version "26821"
  sha256 "2b8ef2d5be94bc1c4ac82420723a3a887f4acc13d9b6b7194c17de8b57d8cfbd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26821/KoLmafia-22.10.26821.dmg",
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
