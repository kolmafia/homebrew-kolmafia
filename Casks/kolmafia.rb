cask "kolmafia" do
  version "26916"
  sha256 "0c71e0edba5fcad4007e6d623d8ff8508cf40bf0a6d24a906b186ab755e7b557"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26916/KoLmafia-22.11.26916.dmg",
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
