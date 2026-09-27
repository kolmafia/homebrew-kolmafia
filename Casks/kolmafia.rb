cask "kolmafia" do
  version "29304"
  sha256 "6ab94d26b3f4b54486f40abac8e0da19f71b94827e6c4a8d24799348ea7f18cf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29304/KoLmafia-26.09.29304.dmg",
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
