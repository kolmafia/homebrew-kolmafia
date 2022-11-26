cask "kolmafia" do
  version "26978"
  sha256 "976dc1375900295cb736177eb7985913ce6d0aee4b0a19d3d31a5af1be96591b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26978/KoLmafia-22.11.26978.dmg",
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
