cask "kolmafia" do
  version "29432"
  sha256 "6fcb58f183e6b1a122032622cd5fc80fdb4612b1b5bd1bd842784453098aa0e4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29432/KoLmafia-26.11.29432.dmg",
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
