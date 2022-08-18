cask "kolmafia" do
  version "26663"
  sha256 "e9fd2c25e934e711def626e1bef908d4c67d61fdd0dbe4aa72cd00f3965b8b63"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26663/KoLmafia-22.08.26663.dmg",
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
