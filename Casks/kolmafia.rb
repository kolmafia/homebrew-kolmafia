cask "kolmafia" do
  version "29189"
  sha256 "e6b10803689503d8ef0d7784a367473bd2eb6de1b2ae7f77d52544314ff24438"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29189/KoLmafia-26.08.29189.dmg",
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
