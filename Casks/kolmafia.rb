cask "kolmafia" do
  version "29431"
  sha256 "ed6c2fbf006b0cd7483581dcccf8702b2fda78b2e4c613c01040e8aed2eeaf67"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29431/KoLmafia-26.11.29431.dmg",
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
