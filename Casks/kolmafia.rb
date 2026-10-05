cask "kolmafia" do
  version "29339"
  sha256 "6fffc771bc0ffc8b57fbec6a5e0cfaa14120a56b3cc3e9523b52171ea2e8da6d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29339/KoLmafia-26.10.29339.dmg",
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
