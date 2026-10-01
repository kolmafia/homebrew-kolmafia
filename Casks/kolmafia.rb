cask "kolmafia" do
  version "29321"
  sha256 "b94f64abe3a156744abd05d843b7594db628addcbc7865fc2d4a78055b62e6ba"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29321/KoLmafia-26.10.29321.dmg",
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
