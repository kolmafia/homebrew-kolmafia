cask "kolmafia" do
  version "29421"
  sha256 "6c49f2bf81befa4857d06b21ad6012871c4eea8846e6a942fce08858acf37852"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29421/KoLmafia-26.11.29421.dmg",
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
