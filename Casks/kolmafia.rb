cask "kolmafia" do
  version "26705"
  sha256 "4b97875dc731aa01a4334ff8f837dd4c6be28411d67702ef74f624a6bdb804b6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26705/KoLmafia-22.08.26705.dmg",
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
