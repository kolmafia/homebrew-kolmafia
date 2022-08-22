cask "kolmafia" do
  version "26688"
  sha256 "9e400ab5f0ba510c0f60bf773e0be4d116b6683f9f7ea12e2b44af3de41a88aa"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26688/KoLmafia-22.08.26688.dmg",
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
