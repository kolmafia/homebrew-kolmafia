cask "kolmafia" do
  version "29265"
  sha256 "ebbf3af417abc05618a3895a7c2ee23cbb6fb82e5c0dd2817ceecc6f3a9ee1fe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29265/KoLmafia-26.09.29265.dmg",
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
