cask "kolmafia" do
  version "26860"
  sha256 "d3495f24ada2291b2bc9465072687fbb7582ac59bd7a78cc413cc35fd120b22d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26860/KoLmafia-22.10.26860.dmg",
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
