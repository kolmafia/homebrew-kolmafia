cask "kolmafia" do
  version "29181"
  sha256 "d64e878785b7dfa5fdba1f14183e0990c1dac62b80c0f0377a0beab14be93b14"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29181/KoLmafia-26.08.29181.dmg",
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
