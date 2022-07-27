cask "kolmafia" do
  version "26608"
  sha256 "a38539d65d9fe1e7a929743f20ceab57d0e02d1afc1dee29e2e1abbc44d33989"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26608/KoLmafia-22.07.26608.dmg",
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
