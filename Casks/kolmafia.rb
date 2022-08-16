cask "kolmafia" do
  version "26659"
  sha256 "7e3ed95954695270102abfada1ad1b37a8113435f80b73e4213d37158d9d71f7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26659/KoLmafia-22.08.26659.dmg",
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
