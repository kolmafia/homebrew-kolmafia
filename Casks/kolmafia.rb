cask "kolmafia" do
  version "26979"
  sha256 "1b049e85d96a2094f79eb8e44eb3e06a2c670a088f72241e274d7092fe4335f2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26979/KoLmafia-22.11.26979.dmg",
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
