cask "kolmafia" do
  version "29398"
  sha256 "49572118e29aaad57ebe9adc99c3edc01b8e327cc59e969a4d728990b590faec"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29398/KoLmafia-26.10.29398.dmg",
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
