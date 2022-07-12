cask "kolmafia" do
  version "26556"
  sha256 "7ce5f651c0112c0de7b4a4f705777b7ffcdbba9c163dad5caaffaf9d29ddc844"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26556/KoLmafia-22.07.26556.dmg",
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
