cask "kolmafia" do
  version "26896"
  sha256 "0a4b3758e579403d62582fb477212fa844ca3e03ae44e2d45dbc7bde8ddc43ee"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26896/KoLmafia-22.11.26896.dmg",
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
