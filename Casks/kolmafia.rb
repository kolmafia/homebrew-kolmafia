cask "kolmafia" do
  version "26707"
  sha256 "63bdbb1c07946dc4fc03516669e3ac80f57397724108630aeb6ddfb5d5882d92"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26707/KoLmafia-22.08.26707.dmg",
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
