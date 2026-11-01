cask "kolmafia" do
  version "29402"
  sha256 "ac2ef3db81dc5071f046bb0f904524856e91c2eb8b1d7f18ae3befcbc9fc04ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29402/KoLmafia-26.11.29402.dmg",
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
