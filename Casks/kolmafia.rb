cask "kolmafia" do
  version "26775"
  sha256 "5966ced8b59a4228327748c23079b83fc50844de07e416c2d1ac4ccf2711b706"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26775/KoLmafia-22.09.26775.dmg",
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
