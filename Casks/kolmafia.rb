cask "kolmafia" do
  version "29188"
  sha256 "a1d84cdae5f88009976d3236a007fd5839aba845ceb85ec2f6cee7aac6f7ce9f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29188/KoLmafia-26.08.29188.dmg",
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
