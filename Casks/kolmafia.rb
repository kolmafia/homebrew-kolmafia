cask "kolmafia" do
  version "26880"
  sha256 "692676995d76286a17275ed23e93a01bb16d6eb740c7dc534ecb45eec8820f1a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26880/KoLmafia-22.10.26880.dmg",
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
