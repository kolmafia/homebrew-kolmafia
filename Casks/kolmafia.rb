cask "kolmafia" do
  version "29227"
  sha256 "2e16425918ab2294a808abac8bd764404d1ba9f8b04317f58820037acb8766c0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29227/KoLmafia-26.09.29227.dmg",
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
