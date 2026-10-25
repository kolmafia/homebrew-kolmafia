cask "kolmafia" do
  version "29388"
  sha256 "3907a230712e4c06bdb5da7aa6839a7fd6bd4b67e857e94614c2dfa089092af0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29388/KoLmafia-26.10.29388.dmg",
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
