cask "kolmafia" do
  version "29463"
  sha256 "71e0c0483297acd680127585ce5ae0c08a0539bfc8c04bfb303bba9f5531f0f2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29463/KoLmafia-26.11.29463.dmg",
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
