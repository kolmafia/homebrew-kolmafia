cask "kolmafia" do
  version "26687"
  sha256 "ead9263cd202b62c773bd14f0ceac7b314ad96d9a8b52f9ae38df28de30bc8c5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26687/KoLmafia-22.08.26687.dmg",
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
