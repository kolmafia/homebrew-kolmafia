cask "kolmafia" do
  version "26724"
  sha256 "b5d192c4c40558003dfba9bf7389b4ccf6a463c007682c10257e8f18442b63c4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26724/KoLmafia-22.09.26724.dmg",
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
