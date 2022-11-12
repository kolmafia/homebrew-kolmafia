cask "kolmafia" do
  version "26928"
  sha256 "64fd223a96527c114b53091bcf9b8d937a93ccf8b8d49ad2883bf9db978fbbde"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26928/KoLmafia-22.11.26928.dmg",
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
