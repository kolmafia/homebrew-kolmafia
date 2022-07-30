cask "kolmafia" do
  version "26614"
  sha256 "28f2c4734454b2db871464403c2c04dcb5a1b25216f0c4aaa4d5354869ae5491"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26614/KoLmafia-22.07.26614.dmg",
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
