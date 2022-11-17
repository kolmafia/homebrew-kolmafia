cask "kolmafia" do
  version "26955"
  sha256 "b50c60ad005b3550fc1f07283f8e3ea82d92474d50ead453ec1fad5f999f47a6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26955/KoLmafia-22.11.26955.dmg",
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
