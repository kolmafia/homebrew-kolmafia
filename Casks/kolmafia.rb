cask "kolmafia" do
  version "26602"
  sha256 "9de2d2a0660c7a11d094099927aa5277a910d29b4ec2d226c2c0f360f1a8a2fd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26602/KoLmafia-22.07.26602.dmg",
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
