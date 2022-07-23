cask "kolmafia" do
  version "26597"
  sha256 "3513d5bea502fe4419ea5bfa9eed2dc9d2446ed68a1d3ac2fb5a69beae8f6dc8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26597/KoLmafia-22.07.26597.dmg",
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
