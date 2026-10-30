cask "kolmafia" do
  version "29400"
  sha256 "c76fe8258478d0a6ef946852395e104e49b9af0e1ef6265815f20886917ed82c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29400/KoLmafia-26.10.29400.dmg",
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
