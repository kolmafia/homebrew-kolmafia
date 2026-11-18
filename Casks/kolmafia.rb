cask "kolmafia" do
  version "29443"
  sha256 "aa752c664e22245f0f29dc4bae3ef9071f772787403441400aaead5cb9e1ad12"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29443/KoLmafia-26.11.29443.dmg",
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
