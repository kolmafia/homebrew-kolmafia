cask "kolmafia" do
  version "26833"
  sha256 "ff052273c996750c526f483d0ad7a6ab5168ab132a0f25aad648110031eadc40"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26833/KoLmafia-22.10.26833.dmg",
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
