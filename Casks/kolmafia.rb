cask "kolmafia" do
  version "26558"
  sha256 "0d93f0a25c2ca4def68a4c6a19b8746f01d30d6914e264f3396537b9af2bc59e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26558/KoLmafia-22.07.26558.dmg",
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
