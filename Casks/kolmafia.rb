cask "kolmafia" do
  version "26904"
  sha256 "b9682ab167371b187db6ff0a92ab20522b67a8e113f0a5b3a37081f2b7e54e68"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26904/KoLmafia-22.11.26904.dmg",
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
