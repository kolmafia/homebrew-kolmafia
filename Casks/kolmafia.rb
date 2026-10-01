cask "kolmafia" do
  version "29323"
  sha256 "2c481d04ac8712d4f0624c240df8bb2714474a0c5d00006aeff615882c02d6a3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29323/KoLmafia-26.10.29323.dmg",
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
