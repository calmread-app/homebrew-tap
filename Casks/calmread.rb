cask "calmread" do
  version "1.0.0"

  sha256 "4349f95705fdcc3c47e17af040c7e8b9c570baf9551538910dc72ca8445bbf27"
  url "https://github.com/calmread-app/CalmRead/releases/download/v#{version}/CalmRead-darwin-arm64-#{version}.zip",
      verified: "github.com/calmread-app/CalmRead/"

  name "CalmRead"
  desc "A calm and focused document reader for texts, markdown, EPUB, DOCX, and CSV files"
  homepage "https://calmread.app"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "CalmRead.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/CalmRead.app"]
  end

  zap trash: [
    "~/Library/Application Support/calmread",
    "~/Library/Preferences/com.calmread.app.plist",
  ]
end
