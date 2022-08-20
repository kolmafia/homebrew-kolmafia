cask "kolmafia" do
  version "26673"
  sha256 "9f38ab5df9dd359331955695e69f135aaff6767ea35bea4abc3b06781f192526"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26673/KoLmafia-22.08.26673.dmg",
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
