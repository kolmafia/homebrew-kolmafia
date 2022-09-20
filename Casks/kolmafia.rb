cask "kolmafia" do
  version "26767"
  sha256 "4ad32839200e399c51f5d982eb75a512e6ef7618f5f7c2584c0c624c9cc51586"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26767/KoLmafia-22.09.26767.dmg",
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
