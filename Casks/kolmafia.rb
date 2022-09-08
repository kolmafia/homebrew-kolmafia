cask "kolmafia" do
  version "26732"
  sha256 "5a00f21ff31e1d463a2e3915b5f4f6bfda28bc396725995c0bd358eda0ee0c16"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26732/KoLmafia-22.09.26732.dmg",
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
