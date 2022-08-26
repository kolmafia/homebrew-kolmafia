cask "kolmafia" do
  version "26701"
  sha256 "c60527e4cc3e4639dee6cf47faf4b101f570aacc831418ff278c8d3bff1b67c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26701/KoLmafia-22.08.26701.dmg",
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
