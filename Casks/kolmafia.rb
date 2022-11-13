cask "kolmafia" do
  version "26940"
  sha256 "c5d823b1ff10607d718e88729ccf9147835588c4c9bebafbc2faa33eff47b8b5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26940/KoLmafia-22.11.26940.dmg",
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
