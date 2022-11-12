cask "kolmafia" do
  version "26929"
  sha256 "86fb43657c6523fcd88d5cdb4f02c0b60231cb8070377bf76adfb13faef4bf7b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26929/KoLmafia-22.11.26929.dmg",
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
