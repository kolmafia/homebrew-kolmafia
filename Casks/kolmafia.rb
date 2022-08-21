cask "kolmafia" do
  version "26677"
  sha256 "d5a3ce7353aeab8ba2e5b8e9c49f25ee473e58f910e0c7f22a1cd97b076ab873"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26677/KoLmafia-22.08.26677.dmg",
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
