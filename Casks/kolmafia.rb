cask "kolmafia" do
  version "26747"
  sha256 "db92383822d7cbec5ecb5bb7eab3ed5c25868945a6b5e6599cfda4cb896a03af"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26747/KoLmafia-22.09.26747.dmg",
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
