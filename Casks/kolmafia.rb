cask "kolmafia" do
  version "29260"
  sha256 "043f26401bc9c0f73cd297a760cf353fe5e0eb681eb1cbc3daeae4e7a0b1a3cf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29260/KoLmafia-26.09.29260.dmg",
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
