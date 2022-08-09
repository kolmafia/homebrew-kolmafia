cask "kolmafia" do
  version "26637"
  sha256 "44bf6dc464d7c0685dceab99322c5bb71692a2072bdace1000ef395dd461c742"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26637/KoLmafia-22.08.26637.dmg",
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
