cask "kolmafia" do
  version "29267"
  sha256 "dc5cbc859c04e19bfaf118744524f8e09df667e45493947212f208bb2012c10a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29267/KoLmafia-26.09.29267.dmg",
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
