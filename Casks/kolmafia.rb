cask "kolmafia" do
  version "29202"
  sha256 "c7454f1e6d03b5410ee905d2af682ab39b58d0de074a40bd7be1901b5ab77dcf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29202/KoLmafia-26.08.29202.dmg",
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
