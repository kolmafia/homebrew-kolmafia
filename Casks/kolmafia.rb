cask "kolmafia" do
  version "29475"
  sha256 "631c3de131a3f5513acdbb9e11287703470f858239c821a1dc5b1982686629ed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29475/KoLmafia-26.11.29475.dmg",
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
