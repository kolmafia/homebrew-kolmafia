cask "kolmafia" do
  version "29415"
  sha256 "17fcce299a4e3ea1d5996424f84481c631c23cac6d3be362500eeb30ab3647bc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29415/KoLmafia-26.11.29415.dmg",
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
