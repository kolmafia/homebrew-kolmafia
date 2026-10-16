cask "kolmafia" do
  version "29373"
  sha256 "f3e8383f6173052aa535b400f3394ee08ad11b63f5884d31fc4c0771eb2fb9ba"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29373/KoLmafia-26.10.29373.dmg",
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
