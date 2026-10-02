cask "kolmafia" do
  version "29325"
  sha256 "250d745fd0242265f6080a9982eed06b9b65a74dd5c9adc30e64d901c0e2100a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29325/KoLmafia-26.10.29325.dmg",
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
