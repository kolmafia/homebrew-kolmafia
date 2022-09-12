cask "kolmafia" do
  version "26739"
  sha256 "e693302b8f4cd8a0c945fde906f17a8a975cf0e9265bec2c2470bc0d2ba8dd71"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26739/KoLmafia-22.09.26739.dmg",
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
