cask "kolmafia" do
  version "26958"
  sha256 "97f8924a0eab7aa8bd2ed1e87f59509ddf8c209efb63b99a4a208a8c3a7c0d66"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26958/KoLmafia-22.11.26958.dmg",
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
