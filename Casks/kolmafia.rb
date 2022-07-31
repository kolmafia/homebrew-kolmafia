cask "kolmafia" do
  version "26618"
  sha256 "26aa1f9d25b50c8e98de8d195fd3eca67750db66cbe112b79a2f2e23742bac35"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26618/KoLmafia-22.07.26618.dmg",
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
