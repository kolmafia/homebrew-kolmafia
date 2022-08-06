cask "kolmafia" do
  version "26626"
  sha256 "e811275a8b753965cf680de915660d5420e9d36bb37c2fa7d9649de093e4c4b8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26626/KoLmafia-22.08.26626.dmg",
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
