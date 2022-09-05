cask "kolmafia" do
  version "26723"
  sha256 "2ee7799a075cf6db6e182cfa17358aa5d869b487fe0af1f6c68abfe46a69f9ff"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26723/KoLmafia-22.09.26723.dmg",
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
