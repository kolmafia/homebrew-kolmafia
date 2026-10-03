cask "kolmafia" do
  version "29328"
  sha256 "0e5438fca456879a6983469a400cf578194103f516e686075e426edf54f78ee4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29328/KoLmafia-26.10.29328.dmg",
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
