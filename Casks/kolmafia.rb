cask "kolmafia" do
  version "26994"
  sha256 "0441055990c8f35283151ae15f253321bbe7560516655e5db72c866f6c9db4fd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26994/KoLmafia-22.12.26994.dmg",
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
