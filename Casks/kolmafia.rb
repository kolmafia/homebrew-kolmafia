cask "kolmafia" do
  version "26839"
  sha256 "1f2ed793ae193170b789681cec82a3c65285fd17c7629262fce1402880e30e46"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26839/KoLmafia-22.10.26839.dmg",
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
