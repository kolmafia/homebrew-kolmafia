cask "kolmafia" do
  version "29308"
  sha256 "d80b9bcecc73d1cdabe048b6b8caa3749a49b1d0b3bc7532a92837165ed6a5b9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29308/KoLmafia-26.09.29308.dmg",
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
