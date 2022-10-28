cask "kolmafia" do
  version "26883"
  sha256 "7704d0b4eb428fe31c75c9235ce11bff745800d19c45a52195d200a8b1eb8798"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26883/KoLmafia-22.10.26883.dmg",
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
