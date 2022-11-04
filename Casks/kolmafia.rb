cask "kolmafia" do
  version "26893"
  sha256 "1a32a7b41d1d3d5c113ba671ee2d4ef2afb4a7093edc1dd25586810dbe44674a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26893/KoLmafia-22.11.26893.dmg",
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
