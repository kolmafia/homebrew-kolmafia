cask "kolmafia" do
  version "26735"
  sha256 "c9dcc47f7afe40ede0f7efe27abda2c3a2c6ba950a502c8fd3311f64cc53e254"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26735/KoLmafia-22.09.26735.dmg",
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
