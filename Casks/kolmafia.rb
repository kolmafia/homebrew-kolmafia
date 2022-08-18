cask "kolmafia" do
  version "26668"
  sha256 "7f904d602285564200de50e80c664bf3a7a6df5d338fcc5d3feeac0af6c4ec8c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26668/KoLmafia-22.08.26668.dmg",
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
