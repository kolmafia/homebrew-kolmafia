cask "kolmafia" do
  version "26541"
  sha256 "8fd3938c81ae70115a734ec1280a5e839b20f50bee5586f8c42f1136fb30cc7a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26541/KoLmafia-22.07.26541.dmg",
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
