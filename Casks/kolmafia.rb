cask "kolmafia" do
  version "26790"
  sha256 "297b5526fa04585b7fb533f101d6b4f1cec321bd700d89147c86b0d002bc2ced"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26790/KoLmafia-22.09.26790.dmg",
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
