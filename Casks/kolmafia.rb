cask "kolmafia" do
  version "null"
  sha256 "c96050b09b4dc34f7e93266cda8a7476747f54e02a5308d08b9bac5f0f3cf753"

  url "",
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
