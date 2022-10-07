cask "kolmafia" do
  version "26819"
  sha256 "f6bcb17fb86c59e1e771ec8929d0b6312eba1c4478380923b77a8c771947dca9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26819/KoLmafia-22.10.26819.dmg",
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
