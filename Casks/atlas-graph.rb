cask "atlas-graph" do
  version "1.1.0"
  sha256 "606ee7339828395a249f34dc600f07855efff8f612e259cdf489c2e17ee27def"

  url "https://gerulata.com/download/atlas/#{version}/Atlas-#{version}-macos-arm64.dmg"
  name "Atlas"
  desc "Explore, analyse and lay out very large graphs"
  homepage "https://gerulata.com/atlas"

  livecheck do
    url "https://gerulata.com/download/atlas/appcast/macos-arm64.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
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
