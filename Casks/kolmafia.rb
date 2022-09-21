cask "kolmafia" do
  version "26778"
  sha256 "5b85486c17ded01246ade424a84023dca99a417098f368c7ff3a7352f7abcac1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26778/KoLmafia-22.09.26778.dmg",
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
