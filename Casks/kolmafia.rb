cask "kolmafia" do
  version "29268"
  sha256 "8f98bd8fc85f0f7c51ea0d729223122704c1d1c8c3774e0a885474d242ba059c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29268/KoLmafia-26.09.29268.dmg",
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
