cask "kolmafia" do
  version "26730"
  sha256 "de78a2a1c47722ab165a36d29e849075e7920e925194eb8ee25f0dafab3cd01c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26730/KoLmafia-22.09.26730.dmg",
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
