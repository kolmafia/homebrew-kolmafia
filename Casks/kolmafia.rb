cask "kolmafia" do
  version "26586"
  sha256 "8e659ba7c9b5645ae173bdbb3e61cbcb54c182432c6ce410943cbe219c75165b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26586/KoLmafia-22.07.26586.dmg",
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
