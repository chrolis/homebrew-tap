cask "displaycal" do
  arch arm: "arm64", intel: "x86"

  version "3.9.14"
  sha256 arm:   "07e432e01b4ebaf30de16ae8e2ffb65246c72130585bd4006a678b3629e94830",
         intel: "b7d3d28e8fe8c350a2bbf9af43c3d070bca2af21abc62f0c491d1639f1f9069a"

  url "https://github.com/eoyilmaz/displaycal-py3/releases/download/#{version}/DisplayCAL-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/eoyilmaz/displaycal-py3/"
  name "DisplayCAL"
  desc "Display calibration and characterization powered by ArgyllCMS"
  homepage "https://github.com/eoyilmaz/displaycal-py3"

  depends_on macos: ">= :ventura"

  app "DisplayCAL.app"

  zap trash: [
    "~/Library/Application Support/DisplayCAL",
    "~/Library/Logs/DisplayCAL",
    "~/Library/Preferences/DisplayCAL",
    "~/Library/Preferences/net.displaycal.DisplayCAL.plist",
    "~/Library/Saved Application State/net.displaycal.DisplayCAL.savedState",
    "~/Library/Application Support/ArgyllCMS",
  ]
end
