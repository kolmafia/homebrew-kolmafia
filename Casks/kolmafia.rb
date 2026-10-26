cask "kolmafia" do
  version "29390"
  sha256 "7126a185fb6a9f820206b1eb5387671116e12a46328634fd5a294a4ba18c8ceb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29390/KoLmafia-26.10.29390.dmg",
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
