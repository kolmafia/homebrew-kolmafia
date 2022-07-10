cask "kolmafia" do
  version "26551"
  sha256 "9061e61d4c845e57776f465436d32086dda8bf7b8812d58ee097f36a66580be3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26551/KoLmafia-22.07.26551.dmg",
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
