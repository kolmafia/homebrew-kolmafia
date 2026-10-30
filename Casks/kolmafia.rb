cask "kolmafia" do
  version "29399"
  sha256 "b3acd6d88e25f26281fe6dd06002c17b726393d4a7b09e08690730c796653e7c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29399/KoLmafia-26.10.29399.dmg",
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
