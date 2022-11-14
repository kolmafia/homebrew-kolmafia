cask "kolmafia" do
  version "26947"
  sha256 "b36bb42ff3ca871168b0c83987d1ebf02c61e238cdeab44afc12d060914b4d7e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26947/KoLmafia-22.11.26947.dmg",
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
