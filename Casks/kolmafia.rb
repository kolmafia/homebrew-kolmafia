cask "kolmafia" do
  version "29423"
  sha256 "c478f9bcb48ec857e167935f5a49f10056d9ccdd854c2be3416f2b2be7263ae4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29423/KoLmafia-26.11.29423.dmg",
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
