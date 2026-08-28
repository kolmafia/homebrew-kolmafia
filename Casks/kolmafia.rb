cask "kolmafia" do
  version "29198"
  sha256 "f84215921f40652c5e1d93d70f36705d6a1aeafd8d6638bebe3a11825a329096"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29198/KoLmafia-26.08.29198.dmg",
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
