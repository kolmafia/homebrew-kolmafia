cask "kolmafia" do
  version "26944"
  sha256 "70722a347e844c8258b525fb30c1d822a2bf9da27bf1f43238be56890bbce681"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26944/KoLmafia-22.11.26944.dmg",
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
