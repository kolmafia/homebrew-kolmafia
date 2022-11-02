cask "kolmafia" do
  version "26889"
  sha256 "94b004f3efd8131167c1bebe3098e2b7da04cda3d8b1d41b72f546a2c149491f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26889/KoLmafia-22.11.26889.dmg",
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
