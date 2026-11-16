cask "kolmafia" do
  version "29434"
  sha256 "a33a051888c0258bb4d889d1649f590f1c026b7cc333624dbb162e75d54d06ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29434/KoLmafia-26.11.29434.dmg",
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
