cask "kolmafia" do
  version "26660"
  sha256 "9904660b610abb7124b8bf056ed58f4ab1b3b52ef3b5a7ef4a1a8c57f3e239ea"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26660/KoLmafia-22.08.26660.dmg",
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
