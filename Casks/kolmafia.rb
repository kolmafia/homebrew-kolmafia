cask "kolmafia" do
  version "29359"
  sha256 "e457a298b5755a65dc0a42f29bf74d5ba622888a40cb83ecc3ff1afbc35c987b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29359/KoLmafia-26.10.29359.dmg",
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
