cask "kolmafia" do
  version "26807"
  sha256 "4cd7df5f2c343e8c31eee1a5ccc6cc9da4541f1357c4a3bfb45faca01a0a06aa"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26807/KoLmafia-22.10.26807.dmg",
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
