cask "kolmafia" do
  version "26972"
  sha256 "9d6499ec2eeac336d3acb6d9f7139b792843d25e21edbd2a4c96bd81fe61da2f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26972/KoLmafia-22.11.26972.dmg",
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
