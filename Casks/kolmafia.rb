cask "kolmafia" do
  version "26706"
  sha256 "97e0de3958293f7a2a88de0232e04434e4d1cf14453efabafb81c05b897cf4a1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26706/KoLmafia-22.08.26706.dmg",
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
