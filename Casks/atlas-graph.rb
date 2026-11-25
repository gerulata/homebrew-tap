cask "atlas-graph" do
  version "1.3.0"
  sha256 "9e44e23125d63262219c5a299c7fa3521ec993feec06b795c5e65e67927401ac"

  url "https://gerulata.com/download/atlas/#{version}/Atlas-#{version}-macos-universal.dmg"
  name "Atlas"
  desc "Explore, analyse and lay out very large graphs"
  homepage "https://gerulata.com/atlas"

  livecheck do
    url "https://gerulata.com/download/atlas/appcast/macos-universal.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Atlas.app"
  binary "#{appdir}/Atlas.app/Contents/MacOS/atlas-graph"

  zap trash: [
    "~/Library/Application Support/com.gerulata.atlas",
    "~/Library/Caches/com.gerulata.atlas",
    "~/Library/HTTPStorages/com.gerulata.atlas",
    "~/Library/Logs/com.gerulata.atlas",
    "~/Library/Preferences/com.gerulata.atlas.plist",
    "~/Library/Saved Application State/com.gerulata.atlas.savedState",
  ]
end
