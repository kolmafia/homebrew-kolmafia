cask "kolmafia" do
  version "29247"
  sha256 "c0e77b4e2424c187a548d0a7634aaf2ef25541b4c32688237a6291f6346d4827"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29247/KoLmafia-26.09.29247.dmg",
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
