cask "atlas-graph" do
  version "1.0.0"
  sha256 "65540945c2767a7e0be1e6ce0580a2a92a0da781fa6569f90bb612c44ee13929"

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
