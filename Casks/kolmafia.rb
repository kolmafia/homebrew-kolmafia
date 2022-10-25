cask "kolmafia" do
  version "26878"
  sha256 "d5a9298b7166e43d6e351de0a287e01c2367aa6c586e4f712bf752f13261a50f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26878/KoLmafia-22.10.26878.dmg",
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
