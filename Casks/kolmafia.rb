cask "kolmafia" do
  version "26780"
  sha256 "424b38993622608a4733a00440e81956d3dae4e30d6ef4c9c20aebc648a7d063"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26780/KoLmafia-22.09.26780.dmg",
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
