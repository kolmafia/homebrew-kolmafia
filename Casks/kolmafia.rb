cask "kolmafia" do
  version "27006"
  sha256 "22193e0b6b4d6abe2e77f4c01e4b34ee4de7fe9ed849fd8caddcc617ad164101"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27006/KoLmafia-22.12.27006.dmg",
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
