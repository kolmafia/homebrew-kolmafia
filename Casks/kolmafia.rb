cask "kolmafia" do
  version "29427"
  sha256 "916d159025a08a238537c0b21d2ef58535b179b37abb4c0d9f96760218b2f99f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29427/KoLmafia-26.11.29427.dmg",
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
