cask "kolmafia" do
  version "26851"
  sha256 "5261ed345a65f48d5b0fc83f5e984ab65ba9a71c3d815d97e6edf73aebc20ddc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26851/KoLmafia-22.10.26851.dmg",
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
