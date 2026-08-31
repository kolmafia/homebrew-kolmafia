cask "kolmafia" do
  version "29209"
  sha256 "2d78a620be70cc4f86b5f331cf608b818b5982255b9f5b99720c239607ca2d97"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29209/KoLmafia-26.08.29209.dmg",
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
