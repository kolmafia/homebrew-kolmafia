cask "kolmafia" do
  version "26686"
  sha256 "eb8c2ecd52a19f7e93dbb9bcf545e24d2bfdccfb1b45d50042a03605aec2097b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26686/KoLmafia-22.08.26686.dmg",
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
