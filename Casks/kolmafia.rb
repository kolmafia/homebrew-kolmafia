cask "kolmafia" do
  version "26814"
  sha256 "2e99275ce2269b745c60c75d455c311643b35c7e0557bab9ed82238361f3bacd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26814/KoLmafia-22.10.26814.dmg",
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
