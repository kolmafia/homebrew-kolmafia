cask "kolmafia" do
  version "26616"
  sha256 "2c4789dbaad18d8eb00cb75a02752b8b440fc8a111816f48422ceb52c394b7bf"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26616/KoLmafia-22.07.26616.dmg",
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
