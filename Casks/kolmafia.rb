cask "kolmafia" do
  version "26902"
  sha256 "7c4b2d867e29f1e3604a89fa711969f71c9a5710784b32d9dc833d99ff44e90d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26902/KoLmafia-22.11.26902.dmg",
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
