cask "kolmafia" do
  version "29372"
  sha256 "4d242fbba22e77d80a1acac8629ee7006ce1a6a826a62b28104633c7fbee491c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29372/KoLmafia-26.10.29372.dmg",
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
