cask "kolmafia" do
  version "26782"
  sha256 "e4755d77c8c0b5804f75d3ab7aefbdca8b0998158c295d166358599f89c182e8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26782/KoLmafia-22.09.26782.dmg",
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
