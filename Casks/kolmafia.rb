cask "kolmafia" do
  version "26800"
  sha256 "774cc4a4f652a758e90e9da1605d30972a5fb35803d1c6d04fa90cfb22e33341"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26800/KoLmafia-22.09.26800.dmg",
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
