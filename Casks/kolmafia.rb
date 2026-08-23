cask "kolmafia" do
  version "29182"
  sha256 "ada7795f46bffed5cc247f92bc3f140f406c4a4f9b050ce22982f014ed7dd7d4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29182/KoLmafia-26.08.29182.dmg",
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
