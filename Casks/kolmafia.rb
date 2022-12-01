cask "kolmafia" do
  version "26988"
  sha256 "143746fa82476980435e9c7405c348921ebc1407d5c5f08ea4c16f0f4a413abd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26988/KoLmafia-22.12.26988.dmg",
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
