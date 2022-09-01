cask "kolmafia" do
  version "26718"
  sha256 "0dd7ffeed39402e0b48e276fbfc27853c01a3a48e63cd5e927b872f6035450d5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26718/KoLmafia-22.09.26718.dmg",
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
