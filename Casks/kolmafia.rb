cask "kolmafia" do
  version "26774"
  sha256 "2099f817a5c0ab85f0020e3a37dc332bf313f2dd953599baaea457756bbf36eb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26774/KoLmafia-22.09.26774.dmg",
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
