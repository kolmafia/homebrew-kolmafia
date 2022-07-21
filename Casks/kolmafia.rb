cask "kolmafia" do
  version "26588"
  sha256 "f393a6f133eb563fb7c7a1c0fcfe0e562fe5eaa412cc118f292fce26077a15aa"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26588/KoLmafia-22.07.26588.dmg",
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
