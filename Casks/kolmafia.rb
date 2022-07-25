cask "kolmafia" do
  version "26601"
  sha256 "049a2a48650fc108a35dfab99d69948678d71bef5d6b6b3631b24dbdcc118ebe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26601/KoLmafia-22.07.26601.dmg",
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
