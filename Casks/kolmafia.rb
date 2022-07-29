cask "kolmafia" do
  version "26611"
  sha256 "e0fbedd8d55cba06ff9f6660194a02470e8add2665c62e8e8e6a21e979f32a73"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26611/KoLmafia-22.07.26611.dmg",
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
