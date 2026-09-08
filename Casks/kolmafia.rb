cask "kolmafia" do
  version "29241"
  sha256 "88370c1558fc70bbce8ad56fb4c4389f5590409b07c390761467ceb64b98f1bd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29241/KoLmafia-26.09.29241.dmg",
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
