cask "kolmafia" do
  version "26838"
  sha256 "577d5cfb5018b6c0b6aaecc86d2c2c29177b4f8fc762f674ccc49a4c336c3881"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26838/KoLmafia-22.10.26838.dmg",
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
