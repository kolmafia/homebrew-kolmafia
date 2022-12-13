cask "kolmafia" do
  version "26999"
  sha256 "0f37d9f8488fb54bef5b4fe9db8e268ae7e9520c3b2836bc50809fa09f696922"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26999/KoLmafia-22.12.26999.dmg",
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
