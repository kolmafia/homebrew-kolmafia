cask "kolmafia" do
  version "26553"
  sha256 "fa32eda9865c0f024bdcfc83cdc76875fd7cc8e12682246d6d3180ad0b4bb645"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26553/KoLmafia-22.07.26553.dmg",
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
