cask "kolmafia" do
  version "29457"
  sha256 "33088b4e76c8e13e0afec645fe4be836d68c1172431d14f89edc0bd925f5dd4e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29457/KoLmafia-26.11.29457.dmg",
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
