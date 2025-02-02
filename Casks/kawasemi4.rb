cask "kawasemi4" do
  version "4.0.2"
  sha256 "6653835de31c86a0b0484d24f9c08776c36602f2e1ddb4759d2a106a83859474"

  url "https://www.monokakido.jp/download/Kawasemi4/Kawasemi4.dmg"
  name "Kawasemi4"
  desc "Japanese input method editor (IME) produced by Monokakido"
  homepage "https://www.monokakido.jp/ja/mac/kawasemi4/index.html"

  depends_on macos: ">= :ventura"

  pkg "かわせみ4 インストーラ.pkg"

  uninstall launchctl:[
              "jp.monokakido.Kawasemi4.KIT.xpcagent",
              "jp.monokakido.Kawasemi4.Enabler",
            ],
            quit: [
              "jp.monokakido.Kawasemi4.JET2Server",
              "jp.monokakido.Kawasemi4.PrefTool",
              "jp.monokakido.Kawasemi4.Setup",
              "jp.monokakido.inputmethod.Kawasemi4",
            ],
            pkgutil: "jp.monokakido.Kawasemi4.pkg"

  zap trash: [
    "~/Library/Kawasemi4",
    "~/Library/Preferences/Kawasemi4.bunya",
    "~/Library/Preferences/Kawasemi4.history",
    "~/Library/Preferences/Kawasemi4.plist",
    "~/Library/Preferences/jp.monokakido.Kawasemi4.Enabler.plist",
    "~/Library/Preferences/jp.monokakido.Kawasemi4.PrefTool.plist",
    "~/Library/Preferences/jp.monokakido.Kawasemi4.Setup.plist",
    "~/Library/Preferences/jp.monokakido.inputmethod.Kawasemi4.plist",
  ]

  caveats do
    logout
  end
end
