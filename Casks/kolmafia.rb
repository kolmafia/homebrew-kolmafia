cask "kolmafia" do
  version "29353"
  sha256 "aebb945d28bab8176cd260924e16b43aff0c926950cbd239c650aecdaaa65354"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29353/KoLmafia-26.10.29353.dmg",
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
