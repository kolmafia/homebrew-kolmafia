cask "kolmafia" do
  version "29406"
  sha256 "cf074700a7b07d803ac91c2d114a0238ab344634646d4ee541a1ad38c1a6c1b8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29406/KoLmafia-26.11.29406.dmg",
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
