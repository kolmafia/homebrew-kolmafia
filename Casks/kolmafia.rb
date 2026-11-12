cask "kolmafia" do
  version "29426"
  sha256 "de7ec9a47554facc17f322b1416e91fa9d856d08e0d67c5d78aad2338a040f2e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29426/KoLmafia-26.11.29426.dmg",
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
