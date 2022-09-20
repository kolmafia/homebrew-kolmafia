cask "kolmafia" do
  version "26773"
  sha256 "c02d6e34d9701a3ef84b35be1c6145adf806577fd6404bfce919b3fe60114013"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26773/KoLmafia-22.09.26773.dmg",
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
