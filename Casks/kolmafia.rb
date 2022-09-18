cask "kolmafia" do
  version "26760"
  sha256 "7d48a6546422d6f7952a9dfb2b0d87c24d93e2189e224f5916c61c90dc0f8aeb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26760/KoLmafia-22.09.26760.dmg",
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
