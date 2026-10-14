cask "kolmafia" do
  version "29368"
  sha256 "cdd003d6ea3b185b2cce00aca6d0a6c4a253e49d032a373b06471551873e4914"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29368/KoLmafia-26.10.29368.dmg",
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
