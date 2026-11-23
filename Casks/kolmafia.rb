cask "kolmafia" do
  version "29468"
  sha256 "d8e92dd5b2426e887a6af7e755e92df6c4ef40f0eb1161058ed98dd675d8dd3d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29468/KoLmafia-26.11.29468.dmg",
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
