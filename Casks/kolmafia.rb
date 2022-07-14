cask "kolmafia" do
  version "26566"
  sha256 "addb3327f11552b9876c1a52a8a3e1d2376d75b281118dc26d2f5e510757a742"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26566/KoLmafia-22.07.26566.dmg",
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
