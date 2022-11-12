cask "kolmafia" do
  version "26937"
  sha256 "977e5dba86f2a9fe49228052f75bc472a660fa2f6a32e2b21dc2becc0a5d8e93"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26937/KoLmafia-22.11.26937.dmg",
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
