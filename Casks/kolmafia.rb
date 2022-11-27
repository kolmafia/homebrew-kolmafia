cask "kolmafia" do
  version "26981"
  sha256 "f07eb69405b9cb78bdfaef76871aabb491580699a0a029fdd0e0a15d355d5f06"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26981/KoLmafia-22.11.26981.dmg",
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
