cask "kolmafia" do
  version "26625"
  sha256 "a59c831c11bfef49c6486e763e577f0be48cde16a4df9535a6ba663e601d4f2b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26625/KoLmafia-22.08.26625.dmg",
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
