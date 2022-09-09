cask "kolmafia" do
  version "26734"
  sha256 "a21bb934b18ccd5ad4c8e0f237def3ef24eec60b711ed36397e46fdbaceb2126"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26734/KoLmafia-22.09.26734.dmg",
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
