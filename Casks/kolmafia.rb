cask "kolmafia" do
  version "26848"
  sha256 "93d45f4977844126be7d888d3eda3df8b8f9a00d36a285fab0da649086393e8d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26848/KoLmafia-22.10.26848.dmg",
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
