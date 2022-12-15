cask "kolmafia" do
  version "27001"
  sha256 "89ace15b5032053cee3bd9b48e02097a48ce191d92b75f3dd8053c77dc40a463"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27001/KoLmafia-22.12.27001.dmg",
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
